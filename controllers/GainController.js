const Gain = require('../models/GainModel');
const User = require('../models/UserModel');
const CustomError = require('../util/CustomError');
const asyncErrorHandler = require('../util/asyncErrorHandler');

const getAll  = asyncErrorHandler(async (req, res) => {
    const { id } = req.params;
    //get all gains
    const gains = await Gain.findAll({
        where: {
            Pdv_id : id
        }
    });
    // check if gains founded
    if(gains.length < 1){
        const err = new CustomError('gains non trouvé', 400);
        return next(err);
    }
    // return gains
    res.status(200).json(gains);
})

const create = asyncErrorHandler(async (req, res) =>{
    const { PDVID, Title, Points } = req.body;
    //get user by id
    const user = await User.findOne({
        where:{
            id : PDVID
        }
    });
    //check if user exist
    if (!user) {
        const err = new CustomError('Utilisateur non trouvé', 400);
        return next(err);
    }
    //check if user have enough points
    if(user.points < Points){
        const err = new CustomError('tu n\'as pas assez de points pour profiter de ce cadeau', 400);
        return next(err);
    }
    //create new gain
    const gain = Gain.create({
        title : Title,
        points : Points,
        status : "Commandé",
        pdv_id : PDVID,
        date : new Date().toISOString().slice(0, 10),
    });
    //check if the gain creation was successful
    if(!gain){
        const err = new CustomError('erreur lors de la demande de votre cadeau, demandez à nouveau', 400);
        return next(err);
    }
    //update user points
    if(user.points > 0) user.points = user.points - Points;
    await user.save();

    //return gain
    res.status(200).json({message: "la demande a été transmise avec succès, veuillez attendre la confirmation"});
})

module.exports = {
    getAll,
    create
}
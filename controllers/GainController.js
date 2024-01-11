const Gain = require('../models/GainModel');
const User = require('../models/UserModel');


const getAll  = async (req, res) => {
    const { id } = req.params;
    try{
        //get all gains
        const gains = await Gain.findAll({
            where: {
                Pdv_id : id
            }
        });
        // check if gains founded
        if(gains.length < 1){
            return res.status(400).json({ message: "gains non trouvé" });
        }
        // return gains
        res.status(200).json(gains);
    }catch(error){
        console.error(error);
        res.status(500).send('Error getting gains');
    }
} 

const create = async (req, res) =>{
    const { PDVID, Title, Points } = req.body;
    try{
        //get user by id
        const user = await User.findOne({
            where:{
                id : PDVID
            }
        });
        //check if user exist
        if (!user) {
            return res.status(404).json({ message: 'Utilisateur non trouvé' });
        }
        //check if user have enough points
        if(user.points < Points){
            return res.status(400).json({ message: 'tu n\'as pas assez de points pour profiter de ce cadeau' });
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
            return res.status(404).json({ message: 'erreur lors de la demande de votre cadeau, demandez à nouveau' });
        }
        //update user points
        if(user.points > 0) user.points = user.points - Points;
        await user.save();

        //return gain
        res.status(200).json({message: "la demande a été transmise avec succès, veuillez attendre la confirmation"});
    }catch(error){
        console.error(error);
        res.status(500).send('Error creating gain');
    }
}

module.exports = {
    getAll,
    create
}
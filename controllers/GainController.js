const Gain = require('../models/GainModel');


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
        
    }catch(error){
        console.error(error);
        res.status(500).send('Error creating gain');
    }
}

module.exports = {
    getAll,
    create
}
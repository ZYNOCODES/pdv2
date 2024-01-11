const Gift = require('../models/GiftModel');


const getAll  = async (req, res) => {
    try{
        //get all gifts
        const gifts = await Gift.findAll();
        // check if gifts founded
        if(gifts.length < 1){
            return res.status(400).json({ message: "Cadeaux non trouvé" });
        }
        // return gifts
        res.status(200).json(gifts);
    }catch(error){
        console.error(error);
        res.status(500).send('Error getting gifts');
    }
} 

module.exports = {
    getAll,
}
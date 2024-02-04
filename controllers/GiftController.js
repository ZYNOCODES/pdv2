const Gift = require('../models/GiftModel');
const CustomError = require('../util/CustomError');
const asyncErrorHandler = require('../util/asyncErrorHandler');

const getAll  = asyncErrorHandler(async (req, res) => {
    //get all gifts
    const gifts = await Gift.findAll();
    // check if gifts founded
    if(gifts.length < 1){
        const err = new CustomError('Cadeaux non trouvé', 400);
        return next(err);
    }
    // return gifts
    res.status(200).json(gifts);
})

module.exports = {
    getAll,
}
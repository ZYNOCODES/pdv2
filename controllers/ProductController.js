const Product = require('../models/ProductModel');
const CustomError = require('../util/CustomError');
const asyncErrorHandler = require('../util/asyncErrorHandler');

const getAll = asyncErrorHandler(async (req, res, next) =>{
    //get all products
    const products = await Product.findAll();
    // check if products founded
    if(products.length < 1){
        const err = new CustomError('Produit non trouvé', 400);
        return next(err);
    }
    // return products
    res.status(200).json(products);
});

module.exports = {
    getAll,
}
const Product = require('../models/ProductModel');

const findProductById = async (id ) => {
    const product = await Product.findByPk(id);
    return product;
};

const findProductByName = async (Name) => {
    const product = await Product.findOne({
        where:{
            model: Name
        }
    });
    return product;
};

module.exports = {
    findProductById,
    findProductByName
}
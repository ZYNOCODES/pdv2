const Product = require('../models/ProductModel');

const findProductById = async (id ) => {
    const product = await Product.findByPk(id);
    return product;
};

module.exports = {
    findProductById,
}
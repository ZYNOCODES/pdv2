const JWT = require('jsonwebtoken');
const User = require('../models/UserModel');
const CustomError = require('../util/CustomError');
const asyncErrorHandler = require('../util/asyncErrorHandler');

const requireAuth = asyncErrorHandler(async (req, res, next) => {
    // Check if user is logged in
    const {authorization} = req.headers;
    
    if(!authorization){
        // If user is not logged in, return error
        const err = new CustomError('authorization token is required', 401);
        return next(err);
    }
    // Get token from header
    const token = authorization.split(' ')[1];
    // Verify token
    const {id} = JWT.verify(token, process.env.SECRET_KEY);
    // Add user to request
    req.user = await User.findByPk(id);
    // Continue to next middleware
    next();
})
module.exports = requireAuth;
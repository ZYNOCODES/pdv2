const User = require('../models/UserModel');

const findUseById = async (id) => {
    const user = await User.findByPk(id);
    return user;
};

const findUserByName = async (Pdvname) => {
    const user = await User.findOne({
        where: {
          pdvname: Pdvname
        }
    });

    return user;
};

const findUserByRC = async (RC) => {
    const user = await User.findOne({
        where: {
          rc: RC
        }
    });
    
    return user;
};

const DecrementUserPoints = async (user, Points) => {
    if(user.points > 0) user.points = user.points - Points;
    await user.save();
};
const IncrementUserPoints = async (user, Points) => {
    user.points = user.points + Points;
    await user.save();
};

module.exports = {
    findUseById,
    findUserByName,
    findUserByRC,
    IncrementUserPoints,
    DecrementUserPoints
}
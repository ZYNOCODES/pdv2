const { DataTypes } = require('sequelize');
const sequelize = require('../config/Database');

const Gifts = sequelize.define('cadeaux', {
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        allowNull: false,
        autoIncrement: true,
    },
    title: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    photo: {
        type: DataTypes.STRING,
        allowNull: true,
        defaultValue: null
    },
    points: {
        type: DataTypes.INTEGER,
        allowNull: true,
        defaultValue: null
    },
    
},{
    freezeTableName: true,
    timestamps: false,
});

module.exports = Gifts;
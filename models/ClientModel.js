const { DataTypes } = require('sequelize');
const sequelize = require('../config/Database');

const Client = sequelize.define('client', {
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        allowNull: false,
        autoIncrement: true,
    },
    nom: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    prenom: {
        type: DataTypes.STRING,
        allowNull: true,
        defaultValue: null
    },
    phone: {
        type: DataTypes.STRING,
        allowNull: true,
        defaultValue: null
    },
    address: {
        type: DataTypes.STRING,
        allowNull: true,
        defaultValue: null
    },
},{
    freezeTableName: true,
    timestamps: false,
});

module.exports = Client;
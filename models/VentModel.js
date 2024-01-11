const { DataTypes } = require('sequelize');
const sequelize = require('../config/Database');

const Vent = sequelize.define('vent', {
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        allowNull: false,
        autoIncrement: true,
    },
    date: {
        type: DataTypes.DATE,
        allowNull: true,
        defaultValue: null
    },
    Pdv_id: {
        type: DataTypes.INTEGER,
        allowNull: false,
    },
    Product_id : {
        type: DataTypes.INTEGER,
        allowNull: false,
    },
    Client_id: {
        type: DataTypes.INTEGER,
        allowNull: false,
    },
    serial_number: {
        type: DataTypes.STRING,
        allowNull: false,
    }
},{
    freezeTableName: true,
    timestamps: false,
});

module.exports = Vent;
const { DataTypes } = require('sequelize');
const sequelize = require('../config/Database');

const SerialNumber = sequelize.define('serial_number', {
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        allowNull: false,
        autoIncrement: true,
    },
    serial_number: {
        type: DataTypes.INTEGER,
        allowNull: false,
    },
    product_id: {
        type: DataTypes.INTEGER,
        allowNull: false,
    },
    status: {
        type: DataTypes.STRING,
        allowNull: true,
        defaultValue : "disponible",
    },
},{
    freezeTableName: true,
    timestamps: false,
});

module.exports = SerialNumber;
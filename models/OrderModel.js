const { DataTypes } = require('sequelize');
const sequelize = require('../config/Database');

const Orders = sequelize.define('commande', {
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        allowNull: false,
        autoIncrement: true,
    },
    number: {
        type: DataTypes.STRING,
        allowNull: true,
        defaultValue: null
    },
    date: {
        type: DataTypes.DATE,
        allowNull: true,
        defaultValue: null
    },
    status_id : {
        type: DataTypes.INTEGER,
        allowNull: false,
    },
    Pdv_id : {
        type: DataTypes.INTEGER,
        allowNull: false,
    },
},{
    freezeTableName: true,
    timestamps: false,
});

module.exports = Orders;
const { DataTypes } = require('sequelize');
const sequelize = require('../config/Database');

const User = sequelize.define('pdv', {
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        allowNull: false,
        autoIncrement: true,
    },
    pdvname: {
        type: DataTypes.STRING,
        allowNull: true,
        defaultValue: null,
    },
    address: {
        type: DataTypes.STRING,
        allowNull: true,
        defaultValue: null,
    },
    contactname: {
        type: DataTypes.STRING,
        allowNull: true,
        defaultValue: null,
    },
    phone: {
        type: DataTypes.STRING,
        allowNull: true,
        defaultValue: null,
    },
    location: {
        type: DataTypes.STRING,
        allowNull: true,
        defaultValue: null,
    },
    commune: {
        type: DataTypes.STRING,
        allowNull: true,
        defaultValue: null,
    },
    Daira: {
        type: DataTypes.STRING,
        allowNull: true,
        defaultValue: null,
    },
    wilaya: {
        type: DataTypes.STRING,
        allowNull: true,
        defaultValue: null,
    },
    points: {
        type: DataTypes.INTEGER,
        allowNull: true,
    },
    password: {
        type: DataTypes.STRING,
        allowNull: true,
        defaultValue: null,
    },
    rc: {
        type: DataTypes.STRING,
        allowNull: true,
        defaultValue: null,
    },
    pdvstatus_id: {
        type: DataTypes.INTEGER,
        allowNull: false,
    },
    pdvgrade_id: {
        type: DataTypes.INTEGER,
        allowNull: false,
        defaultValue: 1,
    },
    user_id: {
        type: DataTypes.INTEGER,
        allowNull: false,
        defaultValue: 1,
    },
    registre_commerce: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    region: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    date_naissance: {
        type: DataTypes.STRING,
        allowNull: true,
        defaultValue: null,
    },
},{
    freezeTableName: true,
    timestamps: false,
});

module.exports = User;
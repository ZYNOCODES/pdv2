const { DataTypes } = require('sequelize');
const sequelize = require('../config/Database');

const gains = sequelize.define('gain', {
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        allowNull: false,
        autoIncrement: true,
    },
    title: {
        type: DataTypes.STRING,
        allowNull: true,
        defaultValue: null
    },
    points: {
        type: DataTypes.INTEGER,
        allowNull: true,
        defaultValue: null
    },
    previous_points : {
        type: DataTypes.INTEGER,
        allowNull: true,
        defaultValue: null
    },
    current_points : {
        type: DataTypes.INTEGER,
        allowNull: true,
        defaultValue: null
    },
    status : {
        type: DataTypes.STRING,
        allowNull: true,
        defaultValue: null
    },
    date : {
        type: DataTypes.DATE,
        allowNull: true,
        defaultValue: null
    },
    validation_date : {
        type: DataTypes.DATE,
        allowNull: true,
        defaultValue: null
    },
    pdv_id : {
        type: DataTypes.INTEGER,
        allowNull: false,
    },
},{
    freezeTableName: true,
    timestamps: false,
});

module.exports = gains;
const { DataTypes } = require('sequelize');
const sequelize = require('../config/Database');

const Products = sequelize.define('product', {
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        allowNull: false,
        autoIncrement: true,
    },
    model:{
        type: DataTypes.STRING,
        allowNull: false,
    },
    os: {
        type: DataTypes.STRING,
        allowNull: true,
        defaultValue: null,
    },
    price: {
        type: DataTypes.INTEGER,
        allowNull: true,
        defaultValue: null,
    },
    points: {
        type: DataTypes.INTEGER,
        allowNull: true,
        defaultValue: null,
    },
    is_new: {
        type: DataTypes.STRING,
        allowNull: true,
        defaultValue: null,
    },
    is_available: {
        type: DataTypes.STRING,
        allowNull: true,
        defaultValue: null,
    },
    is_bestselling: {
        type: DataTypes.STRING,
        allowNull: true,
        defaultValue: null,
    },
    ram: {
        type: DataTypes.INTEGER,
        allowNull: true,
        defaultValue: null,
    },
    rom: {
        type: DataTypes.INTEGER,
        allowNull: true,
        defaultValue: null,
    },
    weight: {
        type: DataTypes.FLOAT,
        allowNull: true,
        defaultValue: null,
    },
    hdmi: {
        type: DataTypes.INTEGER,
        allowNull: true,
        defaultValue: null,
    },
    usb: {
        type: DataTypes.INTEGER,
        allowNull: true,
        defaultValue: null,
    },
    vga: {
        type: DataTypes.INTEGER,
        allowNull: true,
        defaultValue: null,
    },
    dimensions: {
        type: DataTypes.STRING,
        allowNull: true,
        defaultValue: null,
    },
    wifi: {
        type: DataTypes.STRING,
        allowNull: true,
        defaultValue: null,
    },
    bluetooth: {
        type: DataTypes.STRING,
        allowNull: true,
        defaultValue: null,
    },
    earphone: {
        type: DataTypes.STRING,
        allowNull: true,
        defaultValue: null,
    },
    ethernet: {
        type: DataTypes.STRING,
        allowNull: true,
        defaultValue: null,
    },
    description: {
        type: DataTypes.TEXT,
        allowNull: true,
        defaultValue: null,
    },
    oldprice: {
        type: DataTypes.INTEGER,
        allowNull: true,
        defaultValue: null,
    },
    rating: {
        type: DataTypes.FLOAT,
        allowNull: true,
        defaultValue: null,
    },
    techsheet: {
        type: DataTypes.STRING,
        allowNull: true,
        defaultValue: null,
    },
    productimg: {
        type: DataTypes.STRING,
        allowNull: true,
        defaultValue: null,
    },
    banner: {
        type: DataTypes.STRING,
        allowNull: true,
        defaultValue: null,
    },
    category_id: {
        type: DataTypes.INTEGER,
        allowNull: false,
    },
    resolution: {
        type: DataTypes.INTEGER,
        allowNull: false,
    },
    taille: {
        type: DataTypes.INTEGER,
        allowNull: false,
    },
    
},{
    freezeTableName: true,
    timestamps: false,
});

module.exports = Products;
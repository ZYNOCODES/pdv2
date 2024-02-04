const serialnumber = require('../models/SerialNumberModel');

const findSerialNumber = async (SerialNumber) => {
    const product = await serialnumber.findOne({
        where:{
            serial_number: SerialNumber
        }
    });
    return product;
};

module.exports = {
    findSerialNumber
}
const serialnumber = require('../models/SerialNumberModel');

const findSerialNumber = async (SerialNumber) => {
    const product = await serialnumber.findOne({
        where:{
            serial_number: SerialNumber
        }
    });
    return product;
};
const updateSerialNumberStatus = async (serialnumber, status) => {
    serialnumber.status = status;
    await serialnumber.save();
};

module.exports = {
    findSerialNumber,
    updateSerialNumberStatus
}
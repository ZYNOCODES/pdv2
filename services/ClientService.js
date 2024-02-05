const Client = require('../models/ClientModel');

const createClient = async (Nom, Prenom, Phone, Adress) => {
    const client = await Client.create({
        nom: Nom,
        prenom: Prenom,
        phone: Phone,
        address: Adress,
    });
    return client;
};

module.exports = {
    createClient
}

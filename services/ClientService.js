const Client = require('../models/ClientModel');

const createClient = async (Nom, Prenom) => {
    const client = await Client.create({
        nom: Nom,
        prenom: Prenom,
    });
    return client;
};

module.exports = {
    createClient
}

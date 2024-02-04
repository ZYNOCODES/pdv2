const Vent = require('../models/VentModel');
const moment = require('moment');
const CustomError = require('../util/CustomError');
const asyncErrorHandler = require('../util/asyncErrorHandler');
const ClientService = require('../services/ClientService.js');
const SerialNumberService = require('../services/SerialNumberService.js');

const create  = asyncErrorHandler(async (req, res, next) => {
    const {PDVID, Nom, Prenom, SerialNumber} = req.body;
    
    //validation
    if( !Nom || !Prenom || !SerialNumber || !PDVID){
        const err = new CustomError('Tous les champs doivent être remplis', 400);
        return next(err);
    }

    // check if product exist
    const product = await SerialNumberService.findSerialNumber(SerialNumber);
    if(!product){
        const err = new CustomError('Serial number non trouvé', 400);
        return next(err);
    }

    //create new client
    const client = await ClientService.createClient(Nom, Prenom);
    //check the client creation
    if(!client){
        const err = new CustomError('erreur lors de la création d\'un nouveau client, essai a nouveau', 400);
        return next(err);
    }

    //create new vent
    const vent = await Vent.create({
        date: moment().format(),
        Client_id: client.id,
        Product_id: product.product_id,
        Pdv_id: PDVID,
        serial_number: SerialNumber
    });
    //check the vent creation
    if(!vent){
        const err = new CustomError('erreur lors de la création d\'une nouvelle vente, essai a nouveau', 400);
        return next(err);
    }
    
    // return vent
    res.status(200).json({message: "la vente a été validée avec succès."});
})

module.exports = {
  create,
}
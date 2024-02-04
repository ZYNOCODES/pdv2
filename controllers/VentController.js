const Vent = require('../models/VentModel');
const Client = require('../models/ClientModel');
const serialnumber = require('../models/SerialNumberModel');
const moment = require('moment');
const CustomError = require('../util/CustomError');
const asyncErrorHandler = require('../util/asyncErrorHandler');

const create  = asyncErrorHandler(async (req, res) => {
    const {PDVID, Nom, Prenom, SerialNumber} = req.body;
    
    //validation
    if( !Nom || !Prenom ){
        const err = new CustomError('Tous les champs doivent être remplis', 400);
        return next(err);
    }

    //get SerialNumber data
    const product = await serialnumber.findOne({
        where:{
            serial_number: SerialNumber
        }
    });
    // check if product exist
    if(!product){
        const err = new CustomError('Serial number non trouvé', 400);
        return next(err);
    }

    //create new client
    const client = await Client.create({
        nom: Nom,
        prenom: Prenom,
    });
    //check the client creation
    if(!client){
        const err = new CustomError('erreur lors de la création d\'un nouveau client, refaites le processus', 400);
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

    // return vent
    res.status(200).json({message: "la vente a été validée avec succès."});
})

module.exports = {
  create,
}
const Vent = require('../models/VentModel');
const moment = require('moment');
const CustomError = require('../util/CustomError');
const asyncErrorHandler = require('../util/asyncErrorHandler');
const ClientService = require('../services/ClientService.js');
const SerialNumberService = require('../services/SerialNumberService.js');
const UserService = require('../services/UserService.js');
const ProductService = require('../services/ProductService.js');

const create  = asyncErrorHandler(async (req, res, next) => {
    const {PDVID, Nom, Prenom, SerialNumber, Phone, Adress} = req.body;
    
    //validation
    if( !Nom || !Prenom || !Phone || !SerialNumber || !PDVID ){
        const err = new CustomError('Tous les champs doivent être remplis', 400);
        return next(err);
    }

    //get user by id
    const user = await UserService.findUseById(PDVID);
    //check if user exist
    if (!user) {
        const err = new CustomError('Utilisateur non trouvé', 400);
        return next(err);
    }

    // check if serialnumber exist
    const serialnumber = await SerialNumberService.findSerialNumber(SerialNumber);
    if(!serialnumber){
        const err = new CustomError('Numéro de série non trouvé', 400);
        return next(err);
    }
    if(serialnumber.status != 'disponible'){
        const err = new CustomError('Le numéro de série est déjà utilisé d\'une vente précédente', 400);
        return next(err);
    }

    //get product by id
    const product = await ProductService.findProductById(serialnumber.product_id);
    //check if product exist
    if (!product) {
        const err = new CustomError('Produit non trouvé', 400);
        return next(err);
    }

    //create new client
    const client = await ClientService.createClient(Nom, Prenom, Phone, Adress);
    //check the client creation
    if(!client){
        const err = new CustomError('erreur lors de la création d\'un nouveau client, essai a nouveau', 400);
        return next(err);
    }

    //create new vent
    const vent = await Vent.create({
        date: moment().format(),
        Client_id: client.id,
        Product_id: serialnumber.product_id,
        Pdv_id: PDVID,
        serial_number: SerialNumber
    });
    //check the vent creation
    if(!vent){
        const err = new CustomError('erreur lors de la création d\'une nouvelle vente, essai a nouveau', 400);
        return next(err);
    }
    //update user points
    await UserService.IncrementUserPoints(user, product.points);
    //update serialnumber status
    await SerialNumberService.updateSerialNumberStatus(serialnumber, 'vendu');

    // return vent
    res.status(200).json({message: `Félicitations, vous avez gagné ${product.points} points pour cette vente, bravo.`});
});

const getAllByPDV = asyncErrorHandler(async (req, res, next) => {
    const { PDVID } = req.params;

    //check if PDVID is valid
    const user = await UserService.findUseById(PDVID);
    if(!user){
        const err = new CustomError('user non trouvé', 400);
        return next(err);
    }
    //get all ventes
    const ventes = await Vent.findAll({
        where:{
            Pdv_id: PDVID
        }
    });
    //check ventes
    if(!ventes || ventes.length < 1){
        const err = new CustomError('vente non trouvé', 400);
        return next(err);
    }

    res.status(200).json(ventes);
});

module.exports = {
  create,
  getAllByPDV
}
const Vent = require('../models/VentModel');
const Client = require('../models/ClientModel');
const serialnumber = require('../models/SerialNumberModel');
const moment = require('moment');

const create  = async (req, res) => {
    const {PDVID, Nom, Prenom, SerialNumber} = req.body;
    try{
        //validation
        if( !Nom || !Prenom ){
            return res
            .status(400)
            .json({ message: "Tous les champs doivent être remplis" });
        }

        //get SerialNumber data
        const product = await serialnumber.findOne({
            where:{
                serial_number: SerialNumber
            }
        });
        // check if product exist
        if(!product){
            return res.status(400).json({ message: "Serial number non trouvé" });
        }

        //create new client
        const client = await Client.create({
            nom: Nom,
            prenom: Prenom,
        });
        //check the client creation
        if(!client){
            return res.status(400).json({ message: "erreur lors de la création d'un nouveau client, refaites le processus" });
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
        res.status(200).json(vent);
    }catch(error){
        console.error(error);
        res.status(500).send('Error creating vent');
    }
} 

module.exports = {
  create,
}
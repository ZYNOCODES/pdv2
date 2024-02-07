const User = require('../models/UserModel');
const CustomError = require('../util/CustomError');
const asyncErrorHandler = require('../util/asyncErrorHandler');
const UserService = require('../services/UserService.js');
const VenteService = require('../services/VenteService.js');
const bcrypt = require('../util/bcrypt.js');
const {
  createToken
} = require('../util/JWT');

//login
const SignIn = asyncErrorHandler(async (req, res, next) => {
  const {Pdvname, Password} = req.body;

  //check if Pdvname or Password is empty
  if(!Pdvname || !Password){
    const err = new CustomError('Tout les champs doivent etre remplis', 400);
    return next(err);
  }

  //check if user exist
  const user = await UserService.findUserByName(Pdvname);
  if(!user){
    const err = new CustomError('Nom  d\'utilisateur non trouvé', 400);
    return next(err);
  }

  //check if password is correct
  const match = await bcrypt.comparePassword(Password, user.password);
  if(!match){
      const err = new CustomError('Mot de passe incorrect', 400);
      return next(err);
  }

  //check user status
  if (user.pdvstatus_id == "1") {
    const err = new CustomError('Désolé, votre compte n\'est pas encore confirmé.', 400);
    return next(err);
  } else if (user.pdvstatus_id == "3") {
    const err = new CustomError('Votre compte a été rejeté', 400);
    return next(err);
  }
  //create token
  const token = createToken(user.id);
  var id = user.id;

  //return user
  res.status(200).json({id, token});
})  

//signup
const SignUp = asyncErrorHandler(async (req, res, next) => {
  const { Pdvname, Password, Address, RC,Contactname, 
    Phone, Wilaya, Commune, Location, DateNaissance} = req.body;
  
  // hash password
  const hash = await bcrypt.hashPassword(Password);

  //check if user exist already
  const userexist = await UserService.findUserByName(Pdvname);
  if(userexist){
    const err = new CustomError('Nom  d\'utilisateur déjà utilisé', 400);
    return next(err);
  }
  //check if RC exist already
  const RCexist = await UserService.findUserByRC(RC);
  if(RCexist){
    const err = new CustomError('l\'utilisateur existe déjà avec ce numéro de registre du commerce', 400);
    return next(err);
  }
  
  //check img
  if(req.file === undefined){
    const err = new CustomError('vous devez télécharger une photo de votre Registre de commerce', 400);
    return next(err);
  }
  const image = req.file.filename;

  //create new user
  const user = await User.create({
    pdvname: Pdvname,
    password: hash,
    address: Address,
    contactname: Contactname,
    phone: Phone,
    wilaya: Wilaya,
    registre_commerce : image,
    commune : Commune,
    region : 'Centre',
    location : Location,
    date_naissance : DateNaissance,
    rc : RC,
    pdvstatus_id : 1
  });

  if(!user){
    const err = new CustomError('erreur lors de la création de votre compte, réinscrivez-vous', 400);
    return next(err);
  }

  //return user
  res.status(200).json({message:"Utilisateur enregistré avec succès"});
})

//get a specific user
const GetUser = asyncErrorHandler(async (req, res, next) => {
  const {id} = req.params;
  //get user by id
  const user = await User.findByPk(id);
  //check if user exist
  if (!user) {
      const err = new CustomError('Utilisateur non trouvé', 400);
      return next(err);
  }
  //count user ventes
  const ventes = await VenteService.CountVentesByPDV(id);
  //add ventes to user
  user.dataValues.ventes = ventes;

  // return user
  res.status(200).json(user);
})

module.exports = {
  SignIn,
  SignUp,
  GetUser
}
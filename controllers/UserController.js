const User = require('../models/UserModel');
const JWT = require('jsonwebtoken');
const Validator = require('validator');
const bcrypt = require('bcrypt');

//jwt secret
const createToken = (id) => {
    return JWT.sign({_id: id}, process.env.SECRET_KEY, {expiresIn: '1d'});
}

//login
const SignIn = async (req, res) => {
  const {Pdvname, Password} = req.body;
  try{
        //check if Pdvname or Password is empty
        if(!Pdvname || !Password){
            return res
                .status(400)
                .json({ message: "Tout les champs doivent etre remplis" });

        }

        //check if user exist
        const user = await User.findOne({
            where: {
              pdvname: Pdvname
            }
        });
        if(!user){
            return res.status(400).json({ message: "user non trouvé" });
        }
        
        //check if password is correct
        const match = await bcrypt.compare(Password, user.password);
        if(!match){
            return res.status(400).json({ message: "Mot de passe incorrect" });
        }
        //check user status
        if(user.pdvstatus_id == "1"){
          return res.status(400).json({ message: "Désolé, votre compte n'est pas encore confirmé." });
        }else if(user.pdvstatus_id == "3"){
          return res.status(400).json({ message: "Votre compte a été rejeté" });
        }
        //create token
        const token = createToken(user.id);
        var id = user.id;

        //return user
        res.status(200).json({id, token});
  }catch(err){
    console.log(err);
    res.status(400).json('Error while login');
  }
}   

//signup
const SignUp = async (req, res) => {
  const { Pdvname, Password, Address, RC,
    Contactname, Phone, Wilaya, Region, Location, DateNaissance} = req.body;
  try{
    // hash password
    const salt = await bcrypt.genSalt(10);
    const hash = await bcrypt.hash(Password, salt);

    //validation
    if( !Pdvname || !Password || !Address || !Contactname || !Phone || !Wilaya || !Region || !Location || !DateNaissance || !RC ){
        return res
          .status(400)
          .json({ message: "Tous les champs doivent être remplis" });
    }
    
    //check if password is strong
    // if(!Validator.isStrongPassword(Password)){
    //     return res
    //       .status(400)
    //       .json({ message: "Mot de passe pas assez fort" });
    // }
    //check if user exist already
    const userexist = await User.findOne({
        where: {
          pdvname: Pdvname
        }
    });
    if(userexist){
        return res.status(400).json({ message: "Nom  d'utilisateur déjà utilisé" });
    }
    //check img
    if(req.file === undefined){
      return res
      .status(400)
      .json({ message: "vous devez télécharger une photo de votre Registre de commerce " });
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
      region : Region,
      location : Location,
      date_naissance : DateNaissance,
      rc : RC,
      pdvstatus_id : 1
    });

    if(!user){
        return res.status(400).json({ message: "erreur lors de la création de votre compte, réinscrivez-vous" });
    }

    //return user
    res.status(200).json({message:"Utilisateur enregistré avec succès"});
  }catch(err){
    console.log(err);
    res.status(400).json('Error while signin');
  }
}

//get a specific user
const GetUser = async (req, res) => {
  const {id} = req.params;
  try{
      //get user by id
      const user = await User.findByPk(id);
      //check if user exist
      if (!user) {
          return res.status(404).json({ message: 'Utilisateur non trouvé' });
      }
      // return user
      res.status(200).json(user);
  }catch (error) {
      console.error(error);
      res.status(500).send('Error getting user');
  }
  
}

module.exports = {
  SignIn,
  SignUp,
  GetUser
}
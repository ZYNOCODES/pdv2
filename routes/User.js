const express = require('express');
const {
    SignIn,
    SignUp,
    GetUser
} = require('../controllers/UserController');
const {
    upload
} = require('../util/ImageUploader');
const router = express.Router();

//login
router.post('/signin', SignIn);

//signup
router.post('/signup',upload, SignUp);

//get user by id
router.get('/:id', GetUser);



module.exports = router;
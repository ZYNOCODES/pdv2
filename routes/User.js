const express = require('express');
const {
    SignIn,
    SignUp,
    GetUser
} = require('../controllers/UserController');
const router = express.Router();

//login
router.post('/signin', SignIn);

//signup
router.post('/signup', SignUp);

//get user by id
router.get('/:id', GetUser);



module.exports = router;
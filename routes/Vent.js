const express = require('express');
const {
    create
} = require('../controllers/VentController');
const router = express.Router();

//create a new vent
router.post('/', create);

module.exports = router;
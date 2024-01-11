const express = require('express');
const {
    getAll
} = require('../controllers/GiftController');
const router = express.Router();

//create a new vent
router.get('/', getAll);

module.exports = router;
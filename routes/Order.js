const express = require('express');
const {
    getAll
} = require('../controllers/OrderController');
const router = express.Router();

//create a new vent
router.get('/:id', getAll);

module.exports = router;
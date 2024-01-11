const express = require('express');
const {
    getAll
} = require('../controllers/GiftController');
const router = express.Router();
const requireAuth = require('../middleware/requireAuth');

//secure all routes below
router.use(requireAuth);
//create a new vent
router.get('/', getAll);

module.exports = router;
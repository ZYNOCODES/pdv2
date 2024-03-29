const express = require('express');
const {
    create,
    getAllByPDV
} = require('../controllers/VentController');
const router = express.Router();
const requireAuth = require('../middleware/requireAuth');

//secure all routes below
router.use(requireAuth);

//create a new vent
router.post('/', create);
router.get('/All/:PDVID', getAllByPDV);

module.exports = router;
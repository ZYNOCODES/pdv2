const express = require('express');
const {
    getAll,
    create
} = require('../controllers/GainController');
const router = express.Router();

//get all gains by pdvid
router.get('/:id', getAll);

//create a new gain
router.post('/', create);

module.exports = router;
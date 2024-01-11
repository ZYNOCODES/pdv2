const express = require('express');
const {
    getAll,
    create
} = require('../controllers/GainController');
const router = express.Router();
const requireAuth = require('../middleware/requireAuth');

//secure all routes below
router.use(requireAuth);
//get all gains by pdvid
router.get('/:id', getAll);

//create a new gain
router.post('/', create);

module.exports = router;
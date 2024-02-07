const Vent = require('../models/VentModel');

const CountVentesByPDV = async (PDVID) => {
    //get count of ventes by PDV
    const count = await Vent.count({
        where: {
            Pdv_id : PDVID
        }
    });
    
    if(!count){
        return 0;
    }

    return count;
};

module.exports = {
    CountVentesByPDV
}
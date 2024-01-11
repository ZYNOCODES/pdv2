const Order = require('../models/OrderModel');


const getAll  = async (req, res) => {
    const { id } = req.params;
    try{
        //get all orders
        const orders = await Order.findAll({
            where: {
                Pdv_id : id
            }
        });
        // check if orders founded
        if(orders.length < 1){
            return res.status(400).json({ message: "orders non trouvé" });
        }
        // return orders
        res.status(200).json(orders);
    }catch(error){
        console.error(error);
        res.status(500).send('Error getting orders');
    }
} 

const create = async (req, res) =>{
    const { PDVID,  } = req.body;
    try{
        
    }catch(error){
        console.error(error);
        res.status(500).send('Error creating order');
    }
}

module.exports = {
    getAll,
    create
}
require('dotenv').config();

const express = require('express');
const cors = require('cors');
const sequelize = require('./config/Database');
const ErrorHandler = require('./controllers/ErrorController');
const UserRoute = require('./routes/User');
const VentRoute = require('./routes/Vent');
const GiftRoute = require('./routes/Gift');
const gainRoute = require('./routes/Gain');
const productRoute = require('./routes/Product');

const port = process.env.PORT || 8080;

//express app
const app = express();

//midleware
app.use(cors());
app.use('/images', express.static('./images'))
app.use(express.json({ limit: '10mb' }));
app.use(express.urlencoded({ limit: '10mb', extended: false }));



//routes
app.use('/user', UserRoute);
app.use('/vent', VentRoute);
app.use('/gift', GiftRoute);
app.use('/gain', gainRoute);
app.use('/product', productRoute);

//error handling
app.use(ErrorHandler);


//connect to db
sequelize
  .sync()
  .then(() => {
    app.listen(port, () => {
      console.log(`Server is running on port ${port}`);
    });
  })
  .catch((error) => {
    console.error('Database connection error:', error);
  });
import express from 'express';
import * as sql from '../SQL/skus';
import dbConnect from '../database/dbConnections'


const router = express.Router();


// router.use('/skucollections', skus);

router.get('/', (req, res) =>  {
    res.status(200).json({message: 'incomplete request'});
});

router.route('/sku/:sku')
    .get(function(req, res){
        res.status(200)
        res.json({message: 'great success!'})
    })

router.route('/sku')
    .get(function(req, res){

        let pgConnection = dbConnect.client;
        
        pgConnection.connect();

        pgConnection.query(sql.getAllSkus(), (err, res) => {
            console.log(err, res)
            pgConnection.end()
        })

        
    })


module.exports = router;

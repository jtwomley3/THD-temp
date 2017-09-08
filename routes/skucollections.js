import express from 'express';
const router = express.Router();


router.use('/skucollections', skus);



router.get('/', (req, res) =>  {
    response.status(200).json({message: 'incomplete request'});
});

module.exports = router;

const express = require('express');
const cors = require('cors');
const PORT = 8888;
const app = express();
app.use(cors());
app.get('/dogs', function (req, res) {
    const dogs = [
        'https://images.dog.ceo/breeds/affenpinscher/n02110627_10859.jpg',
        'https://images.dog.ceo/breeds/airedale/n02096051_5389.jpg',
        'https://images.dog.ceo/breeds/borzoi/n02090622_3615.jpg',
        'https://images.dog.ceo/breeds/cattledog-australian/IMG_2432.jpg',
        'https://images.dog.ceo/breeds/deerhound-scottish/n02092002_7160.jpg'
    ]
    res.json(JSON.stringify(dogs));
});

app.post('/', function (req, res) {
    res.send('post home');
});

app.listen(PORT, function () {
    console.log('server started at port ' + PORT)
});
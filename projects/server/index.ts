import express from 'express';

const app = express();

app.get('/', (req, res) => {
    res.send('Hello World!');
});

app.listen(2999, () => {
    console.log('Server is running on http://localhost:2999');
});
const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');

const app = express();
const PORT = 3000;

// Middleware
app.use(cors());
app.use(bodyParser.json());

let posts = []; // Array para armazenar os posts

// Rota GET para buscar posts
app.get('/posts', (req, res) => {
    res.json(posts);
});

// Rota POST para criar um novo post
app.post('/posts', (req, res) => {
    const newPost = {
        id: posts.length + 1,
        title: req.body.title,
        body: req.body.body,
    };
    posts.push(newPost);
    res.status(201).json(newPost);
});

// Inicia o servidor
app.listen(PORT, () => {
    console.log(`Servidor rodando em http://localhost:${PORT}`);
});

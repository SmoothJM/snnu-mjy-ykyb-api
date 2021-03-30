const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const session = require('express-session');

const user = require('./routes/user');

const app = express();
const basicURL = '/api';
app.use(express.static(__dirname + '/public'));
app.use(session({
    secret: 'BTD secret',
    resave: false,
    saveUninitialized: false,
    cookie: {
        maxAge: 60 * 10 * 60 * 1000
    }
}));

app.use(bodyParser.urlencoded({extended: false}));
app.use(bodyParser.json());

app.use(basicURL + '/user', user);

app.listen(3000, '127.0.0.1');

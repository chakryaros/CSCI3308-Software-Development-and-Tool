var express = require('express');
var db = require('../database');
var app = express();
module.exports = app;

//statelss no knowledge of prior requests
app.get('/', function (request, response) {
    response.render('index', {
        UserId: '',
        Password: ''
    })

    var input = {
        userId: request.sanitize('userId').escape().trim(),
        paswrd: request.sanitize('paswrd').escape().trim(),
    };
    //TODO
    //app.post to put information onto the server... Uses for login
    //app.put  update to the server... use for active orders i think

    var current_userid = input.userId;
    var current_paswrd = input.paswrd;

    var query = 'SELECT UserId FROM User WHERE current_userId = userId;';

    if(query == '')
    {
        //note: connect console.log to a display
        console.log("User not found. Try creating an account!")
    }
    db.any(query)
        .then(function (rows) {
            // render views/store/list.ejs template file
            response.render('store/list', {
                title: 'Store listing',
                data: rows
            })
        })
        .catch(function (err) {
            // display error message in case an error
            request.flash('error', err);
            response.render('store/list', {
                title: 'Store listing',
                data: ''
            })
        })
});

f

app.post('/add', function (request, response)
{
//create new user
    request.assert('Name', 'Name is required').notEmpty()
    request.assert('UserId', 'UserId is required').notEmpty()
    request.assert('Password', 'Password is required').notEmpty()

    errors = request.validationErrors();
    if (!errors) { // No validation errors
        item = {
            // sanitize() is a function used to prevent Hackers from inserting
            // malicious code(as data) into our database. There by preventing
            // SQL-injection attacks.
            sname: request.sanitize('sname').escape().trim(),
            qty: request.sanitize('qty').escape().trim(),
            price: request.sanitize('price').escape().trim()
        };
        // Running SQL query to insert data into the store table
        db.none('INSERT INTO user(sname, qty, price) VALUES($1, $2, $3)', [item.sname, item.qty, item.price])
            .then(function (result) {
                request.flash('success', 'Data added successfully!');
                // render views/store/add.ejs
                response.render('store/add', {
                    title: 'Add New Item',
                    sname: '',
                    qty: '',
                    price: ''
                })
            }).catch(function (err) {
            request.flash('error', err);
            // render views/store/add.ejs
            response.render('store/add', {
                title: 'Add New Item',
                sname: item.sname,
                qty: item.qty,
                price: item.price
            })
        })
    } else {
        var error_msg = errors.reduce((accumulator, current_error) => accumulator + '<br />' + current_error.msg, '');
        request.flash('error', error_msg);
        response.render('store/add', {
            title: 'Add New Item',
            sname: request.body.sname,
            qty: request.body.qty,
            price: request.body.price
        })
    }
})

app.get('/add', function (request, response)
{
    response.render('store/add')
    {
        foodId: '';
    })
}

app.post('/add', function (request, response))
{
//add order to active orders
    request.assert('foodID', 'foodId is required').notEmpty()

    var  input =
        {
            food = request.sanitize('foodId').escape().trim()
};

    var query = SELECT Name FROM sandwich WHERE input.Food = sandID;

    if(query == '')
    {
        query = SELECT Name FROM pizza_calzone WHERE input.Food = pizzaID;
    }

    var numSanOrders = 'SELECT COUNT * FROM active_orders WHERE foodId < 15;';
    var numPizOrders = 'SELECT COUNT * FROM active_orders WHERE foodId > 14;';
    var  pickUpTime = ((numSanOrders*7)/3) + ((numPizOrders*20)/5);
    // Running SQL query to insert data into the store table
    db.none('INSERT INTO active_orders(UserName, Item, PickupTime) VALUES($1, $2, $3)', [current_userId, query, pickUpTime])
        .then(function (result) {
            request.flash('success', 'Data added successfully!');

        })
} else {
    var error_msg = errors.reduce((accumulator, current_error) => accumulator + '<br />' + current_error.msg, '');
    request.flash('error', error_msg);
    response.render('store/add', {
        title: 'Add New Item',
        UserName: request.body.current_userId,
        item: request.body.query,
        PickupTime: request.body.pickUpTime
    })
}



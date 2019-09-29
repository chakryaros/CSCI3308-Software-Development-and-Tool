//In order to access store (to add, delete, edit etc), we need to have
//var store = require('./routes/sotre')
//app.use('/store', store);

//I also think we need to have all the HTML files (or the ones that will have
//changine/updating data) be .ejs files so that the backend can edit them.


var express = require('express');
var db = require('../database');
var app = express();
module.exports = app;

//statelss no knowledge of prior requests
app.get('/', function (request, response) {
    response.render('store/list', {
        UserId: '',
        Password: ''
    })

    var input = {
        userId: request.sanitize('userId').escape().trim(),
        paswrd: request.sanitize('paswrd').escape().trim(),
};
    //TODO
    //app.post to put information onto the server... Uses for login
    	//I think this is covered by the app.get and the app.post function from below
    	//This will allow a new user to input their info and then it will add their
    	//info to the table in the database

    //app.put  update to the server... use for active orders i think
    	//I think this is to update the active orders page. So since we have the code
    	//written further down, we just need a way for that code to connect to an .ejs
    	//file so that it can update it with the correct order info. However, the info
    	//needs to be taken from the user and then displayed to the restaurant side, so 
    	//I am unsure on how to approach that.

    var current_userid = input.userId;
    var current_paswrd = input.paswrd;

    var query = 'SELECT UserId FROM User WHERE current_userId = userId;';

    if(query == '')
    {
        //note: connect console.log to a display
        console.log("User not found. Try creating an account!")
    }
    
    //This code displays the table, but I don't think we need it
    //We don't have any table/information to display

    /*db.any(query)
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
        })*/
});

app.get('/add', function (request, response)
{
	response.render('user/add', {
	    Name: '',
	    UserId: '',
	    Password: ''
	})
})

app.post('/add', function (request, response))
{
//create new user

//I went through and corrected all the names to fit into the User Table categories
    request.assert('Name', 'Name is required').notEmpty()
    request.assert('UserId', 'UserId is required').notEmpty()
    request.assert('Password', 'Password is required').notEmpty()

    errors = request.validationErrors();
    if (!errors) { // No validation errors
        user = {
            // sanitize() is a function used to prevent Hackers from inserting
            // malicious code(as data) into our database. There by preventing
            // SQL-injection attacks.
            Name: request.sanitize('Name').escape().trim(),
            UserId: request.sanitize('UserId').escape().trim(),
            Password: request.sanitize('Password').escape().trim()
        };
        // Running SQL query to insert data into the store table
        db.none('INSERT INTO user(Name, UserId, Password) VALUES($1, $2, $3)', [user.Name, user.UserId, user.Password])
            .then(function (result) {
                request.flash('success', 'Data added successfully!');
                // render views/store/add.ejs
                response.render('store/add', {
                    title: 'Add New User',
                    Name: '',
                    UserId: '',
                    Password: ''
                })
            }).catch(function (err) {
            request.flash('error', err);
            // render views/store/add.ejs
            response.render('store/add', {
                title: 'Add New User',
                Name: user.Name,
                UserId: user.UserId,
                Password: user.Password
            })
        })
    } else {
        var error_msg = errors.reduce((accumulator, current_error) => accumulator + '<br />' + current_error.msg, '');
        request.flash('error', error_msg);
        response.render('store/add', {
            title: 'Add New Item',
            Name: request.body.Name,
            UserId: request.body.UserId,
            Password: request.body.Password
        })
    }
}

app.get('/add', function (request, response)
{
    Response.render('store/add'
    {
        foodId: '';
    })
}

App.post('/add', function (request, response))
{
//add order to active orders

//Corrected the syntax errors
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

    }) else {
	    var error_msg = errors.reduce((accumulator, current_error) => accumulator + '<br />' + current_error.msg, '');
	    request.flash('error', error_msg);
	    response.render('store/add', {
	        title: 'Add New Active Order',
	        UserName: request.body.current_userId,
	        Item: request.body.query,
	        PickupTime: request.body.pickUpTime
	    })
	}
}



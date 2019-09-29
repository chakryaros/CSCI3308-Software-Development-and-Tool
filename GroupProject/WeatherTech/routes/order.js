var express = require('express');
var db = require('../database');
var app = express();
module.exports = app;

app.get('/order', function(request,response){
	response.render('index',{
		UserId: '',
		FoodName: ''
	})
});

    

app.post('/order', function(request, response){
	request.assert('UserId', 'UserId is required').notEmpty();
	request.assert('FoodName', 'FoodName is required').notEmpty();

	errors = request.validationErrors();
	if(!errors){
		var item = {
			UserId: request.sanitize('UserId').escape().trim(),
			FoodName: request.sanitize('FoodName').escape().trim()
		};
		var queryUID = 'SELECT * FROM users WHERE userid =\'' +item.UserId +'\';';
		var queryF = 'SELECT * FROM food WHERE foodid =\'' + item.FOodName +'\';';
	}

	db.none('INSERT INTO activeorders(username, item) VALUES($1, $2)', [item.Name, item.item])
	.then(function (result){
		request.flash('success', 'Order placed');
		response.render('index',{})
		.catch(function (err){
			request.flash('error', 'Please enter valid information');
			response.render(/*path to same page*/,{})
		});
	}
})
var mysql = require('mysql');
var inquirer = require('inquirer');

var connection = mysql.createConnection({
	host: 'localhost',
	port: 3306,
	user: 'root',
	password: 'cz918459',
	database:  'bamazon'
});

connection.connect(function(err) {
    if (err) throw err;
    start();
  });

function start() {
    connection.query("select * FROM products", function(err, res) {
      if (err) throw err;
      for (var i = 0; i < res.length; i++) {
        console.log(res[i].ProductName + " | " + res[i].DepartmentName + " | " + res[i].Price + " | " + res[i].StockQuantity);
      }
      console.log("-----------------------------------");
    });
}
inquirer.prompt([
  {
      type: 'list',
      message: 'How would you like to view our products?',
      choices: ['View All', 'View By Department', 'Exit'],
      name: 'custom_view'
  }
]).then(function(view_option){
  switch(view_option.custom_view){
    case 'View All':
        ViewAll();
        break;
    case 'View By Department':
        ViewByDepartment();
        break;
    case 'Exit':
      connection.end();
      break;
}
});    

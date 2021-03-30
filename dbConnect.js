const mysql = require("mysql");
const pool = mysql.createPool({
  host: "localhost",
  user: "root",
  password: "root",
  port: 3306,
  database: "snnu_mjy-ykyb-db",
});

module.exports = pool;

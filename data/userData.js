const pool = require("../dbConnect");

const authUserAccount = (conditions, cal) => {
  pool.getConnection((err, connection) => {
    if (err) console.log("user数据库连接失败 ", err);
    else {
      let sql = "SELECT * FROM user WHERE stuCode = ? AND password = ?";
      connection.query(sql, conditions, (e, result) => {
        if (e) console.log("user查询失败 ", e);
        else {
          cal(result);
          connection.release();
        }
      });
    }
  });
};

module.exports = {
  authUserAccount: authUserAccount,
};

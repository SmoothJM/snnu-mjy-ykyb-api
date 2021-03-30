const express = require("express");
const router = express.Router();
const userData = require("../data/userData");

router.get("/", (req, res) => {
  console.log(req);
  res.json({ msg: "土豆土豆🥔，我是地瓜🍠" });
  userData.authUserAccount([req.usn, req.pwd], (result) => {
    console.log(result);
    res.json({ result });
  });
});


module.exports = router;
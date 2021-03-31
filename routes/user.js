const express = require("express");
const router = express.Router();
const userData = require("../data/userData");

router.post("/login", (req, res) => {
  userData.authUserAccount([req.body.stuCode, req.body.password], (result) => {
    console.log(result);
    res.json({ result, msg: result.length > 0 ? "ok" : "error" });
  });
});

module.exports = router;

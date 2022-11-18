var models = require('../models');

module.exports = {
  get: function (req, res) {
    models.users.getAll((err, results) => {
      if (err) {
        res.sendStatus(500);
      } else {
        res.json(results);
      }
    });
  }, // a function which handles a get request for all messages

  post: function (req, res) {
    console.log(req.body);
    let params = [req.body.username];
    models.users.create( params, (err, results) => {
      if (err) {
        res.sendStatus(500);
      } else {
        res.sendStatus(200);
      }
    });

  }
};

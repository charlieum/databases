var models = require('../models');

module.exports = {
  get: function (req, res) {
    models.messages.getAll((err, results) => {
      if (err) {
        console.log(err);
        res.sendStatus(500);
      } else {
        res.json(results);
      }
    });
  }, // a function which handles a get request for all messages

  post: function (req, res) {
    let params = [ req.body.message, req.body.username, req.body.roomname ];
    console.log('params: ', params);
    models.messages.create( params, (err, results) => {
      if (err) {
        console.log(err);
        res.sendStatus(500);
      } else {
        res.sendStatus(200);

      }
    });

  } // a function which handles posting a message to the database
};

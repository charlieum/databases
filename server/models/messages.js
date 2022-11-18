var db = require('../db');

module.exports = {
  getAll: function (callback) {

    let queryStr = `SELECT messages.id, messages.message, messages.roomname, users.username FROM messages
                    LEFT OUTER JOIN users on (messages.userid = users.id)
                    ORDER BY messages.id DESC`;
    db.query(queryStr, (err, results) => {
      callback(err, results);
    });
  },

  create: function (params, callback) {
    let queryStr = `INSERT INTO messages (message, userid, roomname)
    VALUES ("${params[0]}", (SELECT id FROM users WHERE username = "${params[1]}" limit 1), "${params[2]}")`;
    db.query(queryStr, (err, results) => {
      callback(err, results);
    });

  }
};

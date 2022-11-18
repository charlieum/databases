var db = require('../db');

module.exports = {
  getAll: function (callback) {
    let queryStr = 'SELECT * FROM users';
    db.query(queryStr, (err, results) => {
      callback(err, results);
    });
  },
  create: function (params, callback) {
    let queryStr = `INSERT INTO users (username)
                    VALUES ("${params[0]}")`;
    db.query(queryStr, (err, results) => {
      callback(err, results);
    });
  }
};

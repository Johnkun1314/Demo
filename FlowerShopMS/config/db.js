
var sql = require('mssql');  
let config  = {
    user: 'sa',
    password: '123456',
    server: '192.168.43.15',  //寝室:192.168.1.100 //手机wifi 
    database: 'FlowerShopMS',
    port: 1433,
    options: {
    encrypt: true // Use this if you're on Windows Azure
    },
    multipleStatements: true ,
    pool: {
        min: 0,
        max: 20,
        idleTimeoutMillis: 3000
    }
};

async function connect(query,callback){
  new sql.ConnectionPool(config).connect().then(pool => {
      return pool.request().query(query)
      }).then(result => {
          callback(result);
        sql.close();
      }).catch(err => {
        sql.close();
      });
} 

module.exports = connect;  
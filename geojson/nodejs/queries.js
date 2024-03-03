// const Pool  = require('pg').Pool;

// const pool = new Pool({
//   host: 'localhost',
//   port: 5432,
//   user: 'postgres',
//   password: '18010610',
//   database: 'egitim'
// });

// const getAsRows = (request, response) => {
//     pool.query('select*from spatialdata' , (error,result) =>{
//     if(error){
//         throw error
//     }else{
//         response.status(200).json(result.rows)
//     }
// })
// }
// module.exports = {
//     getAsRows
// }







// GEOJSON ÇIKTI ALMA
/ const Pool  = require('pg').Pool;

// const pool = new Pool({
//   host: 'localhost',
//   port: 5432,
//   user: 'postgres',
//   password: '18010610',
//   database: 'egitim'
// });

// const getAsGeojson = (request, response) => {
//     pool.query('select*from spatialdata' , (error,result) =>{
//     if(error){
//         throw error
//     }else{
//         response.status(200).json(result.rows)
//     }
// })
// }
// module.exports = {
//     getAsRows
// }
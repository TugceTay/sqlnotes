
// const express = require('express');
// const bodyParser = require('body-parser');
// const {request, response}=require('express');
// const db = require('./queries')
// const app = express();
// const port = 3000;

// app.use(bodyParser.json());
// app.use(
//     bodyParser.urlencoded({
//         extended:true
//     })
// )
// // app.use bir istek gönderdiğimizde bu gelen istekleri karşılamaya  başlar

// app.get('./',(request, response)=>{
//     response.json({info:'servis alışıyor'});
// })

// app.get('./rows', db.getAsRows);

// app.listen(port, () =>{
//     console.log("service runningon port" + port)
// });





//GEOJSON ÇIKTI ALMA
const express = require('express');
const bodyParser = require('body-parser');
const {request, response}=require('express');
const db = require('./queries')
const app = express();
const port = 3000;

app.use(bodyParser.json());
app.use(
    bodyParser.urlencoded({
        extended:true
    })
)
app.get('./',(request, response)=>{
    response.json({info:'servis alışıyor'});
})

app.get('/rows', db.getAsRows);
app.get('/geojson', db.getAsGeojson);


app.listen(port, () =>{
    console.log("service runningon port" + port)
});

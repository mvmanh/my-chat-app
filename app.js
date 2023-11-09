const express = require('express')
const app = express()
const http = require('http')
const ws = require('ws')
app.set('view engine', 'ejs')


app.get('/', (req, res) => res.render('index'))

const server = http.createServer(app)
const wss = new ws.Server({server})
server.listen(8080, () => console.log('http://localhost:8080'))


wss.on('connection', client => {
    console.log('a client connected')

    client.onclose = () => {
        console.log('client left')
        wss.clients.forEach(c => c.send('A client left'))
    }
    client.onmessage = msg => {
        const text = msg.data
        //client.send(text.toUpperCase())
        wss.clients.forEach(c => c.send(text.toUpperCase()))
    }

})


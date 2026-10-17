const express = require('express');
const app = express();
const PORT = 3000;

app.get('/', (req, res) => {
  res.json({ 
    message: 'Hello from Docker & K8s - Zero to Pro in 5 Min!',
    by: '@software.engineering.paradise',
    pod: process.env.POD_NAME || 'local'
  });
});

app.get('/health', (req, res) => res.send('OK'));

app.listen(PORT, () => console.log(`Running on ${PORT}`));

import express from 'express';

const PORT = 3333;
const app = express();

app.get('/', (req, res) => {
  res.send({ message: 'Our app runs even with nodemon!!!' });
});

app.listen(PORT, (error) => {
  if (error) {
    console.error('An error occurred and it is ==> ', error);
  } else {
    console.info(`server is up and running on port ${PORT}...`);
  }
});

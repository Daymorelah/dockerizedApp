import express from 'express';
import routes from './route';

const PORT = 3333;
const app = express();

routes(app);

app.listen(PORT, (error) => {
  if (error) {
    console.error('An error occurred and it is ==> ', error);
  } else {
    console.info(`server is up and running on port ${PORT}...`);
  }
});

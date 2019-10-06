const routes = (app) => {
  app.get('/', (req, res) => {
    res.send({ message: 'Our app runs even with nodemon!!!' });
  });
};

export default routes;

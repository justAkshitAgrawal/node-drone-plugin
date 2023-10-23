const http = require("http");
const hostname = "0.0.0.0";
const port = process.env.PLUGIN_PORT || 3000;

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader("Content-Type", "text/plain");
  res.end("Hello World\n");
});

server.listen(port, hostname, () => {
  console.log(`Server running at http://localhost:${port}/`);
  console.log(process.env.PLUGIN_MESSAGE);
});

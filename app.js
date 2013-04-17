var http = require("http");

http.createServer(function(req, res){
  html = "<!DOCTYPE html><html><body>"
        + "<h1>mmrzr</h1>"
        + "<p>Hi there</p>"
        + "</body></html>";

  res.writeHead(200, {
    "Content-type": "text/html",
    "Content-length": html.length
  });

  res.end(html);

}).listen(8000, "127.0.0.1");


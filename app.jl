using Merly

server = Merly.app()
server.webserverpath("/app")

  @page "/" begin
  res.headers["Content-Type"]= "text/html"
  "<h1> Hello, running a server from <b>Julia 1.2.0</b>!!! :3 </h1>"
  end

  server.notfound("
    <!DOCTYPE html>
    <html>
    <head><title>Not found</title></head>
    <body><h1>404, Not found</h1></body>
    </html>
  ")

server.start(config=Dict("host" => "0.0.0.0","port" => (∈("PORT", keys(ENV)) ? parse(Int, ENV["PORT"]) : 5000)))

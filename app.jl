using Merly

server = Merly.app()
server.webserverpath("/app")

  @page "/" begin
  res.headers["Content-Type"]= "text/html"
  @info("pwd",pwd())
  return File("index.html")
  end

  server.notfound("
    <!DOCTYPE html>
    <html>
    <head><title>Not found</title></head>
    <body><h1>404, Not found</h1></body>
    </html>
  ")

server.start(config=Dict("host" => "0.0.0.0","port" => (∈("PORT", keys(ENV)) ? parse(Int, ENV["PORT"]) : 5000)))

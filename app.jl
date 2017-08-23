using Merly

server = Merly.app()
  @page "/" "Hello World!"

  server.notfound("
    <!DOCTYPE html>
    <html>
    <head><title>Not found</title></head>
    <body><h1>404, Not found</h1></body>
    </html>
  ")

server.start("127.0.0.1", ∈("PORT", keys(ENV)) ? parse(Int, ENV["PORT"]) : 5000)

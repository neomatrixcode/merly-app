using Merly

server = Merly.app(ur,"jl")
  @page "/" "Hello World!"
  @page "/hola/:usr" "<b>Hello {{usr}}!</b>"
  @route GET "/get/:data" begin
    "get this back: {{data}}"
  end

  server.notfound("
    <!DOCTYPE html>
    <html>
    <head><title>Not found</title></head>
    <body><h1>404, Not found</h1></body>
    </html>
  ")

  server.start("$host", port)

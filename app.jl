using Merly

webserverfiles("css")

content= File("merlyapp.html")

  @page "/" (;content=content)  begin

  return HTTP.Response(200
          , HTTP.mkheaders(["Content-Type" => "text/html"])
          , body= content)
  end

  notfound("merlynotfound.html")

start(host = "0.0.0.0", port = (∈("PORT", keys(ENV)) ? parse(Int, ENV["PORT"]) : 5000))
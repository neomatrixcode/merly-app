using Merly

server = Merly.app()

  @page "/" begin
  res.headers["Content-Type"]= "text/html"
  """<html><head>
        <title>Heroku | Welcome to your new app in Julia 1.5.3!</title>
        <style type=\"text/css\">
      body {
        background-color: white;
        color: #333333;
          font-family: Arial, sans-serif;
        margin: 0;
        padding: 36px;
        line-height: 1;
        font-size: 14px; }

      .section {
        margin-bottom: 36px; }
        .section.friendly {
          color: #222222; }
          .section.friendly h1 {
            font-size: 26px;
            background-color: #dad8e4;
            padding: 18px 22px 15px 22px;
            margin: 0;
            overflow: hidden; }
            .section.friendly h1 strong {
              display: inline-block;
              float: left; }
            .section.friendly h1 small {
              display: inline-block;
              float: right;
              text-align: right;
              font-size: 18px;
              padding-top: 4px;
              color: #333333; }
          .section.friendly .article {
            border: 4px solid #dad8e4;
            padding: 24px 18px 18px 18px; }
            .section.friendly .article h3 {
              font-size: 20px;
              margin: 0 0 18px 0; }
            .section.friendly .article a {
              color: #6b6ceb; }
              .section.friendly .article a:visited {
                color: #1d1d3b; }
            .section.friendly .article p {
              font-size: 14px; }
            .section.friendly .article ul {
              list-style-type: square; }
      .section.original {
        background-color: #eeeeee;
        color: #444444; }
        .section.original h2 {
          background-color: #dddddd;
          margin: 0;
          padding: 18px 22px 18px 22px;
          font-size: 20px; }
        .section.original pre {
          margin: 0;
          padding: 18px 22px 18px 22px;
          overflow: auto;
          font-family: monaco, monospaced; }
          .section.original pre code {
            display: block;
            font-size: 11px;
            width: 100%; }
    </style>
      </head>
      <body>
        <div class=\"container\">
          <div class=\"section friendly\">
            <h1><strong>Heroku | Welcome to your new app in Julia 1.5.3!</strong></h1>
            <div class=\"article\">
              <p>Refer to the <a href=\"//devcenter.heroku.com/\">documentation</a> if you need help deploying.</p>
            </div>
          </div>
        </div>

    </body></html>
"""
  end

  server.notfound("
    <!DOCTYPE html>
    <html>
    <head><title>Not found</title></head>
    <body><h1>404, Not found</h1></body>
    </html>
  ")

server.start(config=Dict("host" => "0.0.0.0","port" => (∈("PORT", keys(ENV)) ? parse(Int, ENV["PORT"]) : 5000)))

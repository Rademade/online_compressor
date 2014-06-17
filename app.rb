get '/' do
  ['<html>',
    '<head>',
      '<title>Rademade compressor</title>',
    '</head>',
    '<body>',
      '<p>',
        'Post "css" param to /css url',
        '<br/>',
        'Post "js" param to /js url',
      '<p>',
    '</body>',
  '</html>'].join("\n")
end

post '/css' do
  compressor = YUI::CssCompressor.new
  compressor.compress params[:css]
end

post '/js' do
  compressor = YUI::JavaScriptCompressor.new(:munge => true)
  compressor.compress params[:js]
end
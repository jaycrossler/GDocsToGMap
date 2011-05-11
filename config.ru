use Rack::Static, 
  :urls => ["/stylesheets", "/images", "/javascript"],
  :root => "public"

run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'public, max-age=60' 
    },
    File.open('public/index.html', File::RDONLY)
  ]
}
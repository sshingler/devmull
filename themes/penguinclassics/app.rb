module Nesta
  class App
    use Rack::Static, :urls => ['/penguinclassics'], :root => 'themes/penguinclassics/public'
    
    get '/robots.txt' do
      content_type 'text/plain', :charset => 'utf-8'
      <<-EOF
    # robots.txt
    # See http://en.wikipedia.org/wiki/Robots_exclusion_standard
    User-agent: *
    Disallow:
    Sitemap: http://www.devmull.net/sitemap.xml
      EOF
    end
  end
end
# Use the app.rb file to load Ruby code, modify or extend the models, or
# do whatever else you fancy when the theme is loaded.

# This code tells Nesta to look for assets in the theme's public folder.
# Highly recommended if your theme contains images or JavaScript.
#
# use Rack::Static, :urls => ["/penguinclassics"],
#                   :root => "themes/penguinclassics/public"

module Nesta
  class App
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
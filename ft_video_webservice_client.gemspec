Gem::Specification.new do |spec|
  spec.name        = 'ft_video_webservice_client'
  spec.version     = '0.1.0'
  spec.licenses    = ['MIT']
  spec.summary     = "Webservice client for FT Video acceptance testing"
  spec.description = ""
  spec.authors     = ["Darren Bown"]
  spec.email       = 'darren.bown@droidqa.co.uk'
  spec.required_ruby_version = '>= 2.3.1'
  spec.files       =  Dir['lib/   *.rb'] + Dir['bin/*'] + Dir['logs/*'] + Dir['config/*'] + Dir['test/*']
end
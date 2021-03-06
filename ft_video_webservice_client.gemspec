Gem::Specification.new do |spec|
  spec.name        = 'ft_video_webservice_client'
  spec.version     = '0.1.5'
  spec.licenses    = ['MIT']
  spec.summary     = "Webservice client for FT Video acceptance testing"
  spec.description = ""
  spec.authors     = ["Darren Bown"]
  spec.email       = 'darren.bown@droidqa.co.uk'
  spec.required_ruby_version = '>= 2.3.1'
  spec.files       =  Dir['config/*'] + Dir['lib/ft_video_webservice_client.rb'] + Dir['lib/*.rb'] + Dir['logs/*']
  spec.files       += Dir['bin/*'] + Dir['test/**/*'] + ['Gemfile'] + ['vcr_setup.rb'] + ['video_test.rb']
end

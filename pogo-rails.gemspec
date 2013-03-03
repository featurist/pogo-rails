$:.push File.expand_path("../lib", __FILE__)
require "pogo/rails/version"

Gem::Specification.new do |s|
  s.name        = "pogo-rails"
  s.version     = Pogo::Rails::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Josh Chisholm"]
  s.email       = ["josh@featurist.co.uk"]
  s.homepage    = "https://github.com/featurist/pogo-rails"
  s.summary     = %q{PogoScript adapter for the Rails asset pipeline.}
  s.description = %q{PogoScript adapter for the Rails asset pipeline.}

  s.rubyforge_project = "pogo-rails"

  s.add_runtime_dependency 'pogo-script', '>= 0.0.2'
  s.add_runtime_dependency 'railties',      '>= 4.0.0.beta', '< 5.0'

  s.files         = [".gitignore",".travis.yml","Gemfile","MIT-LICENSE","README.markdown","Rakefile","pogo-rails.gemspec","lib/assets/javascripts/pogo-script.js.erb","lib/pogo-rails.rb","lib/pogo/rails/engine.rb","lib/pogo/rails/template_handler.rb","lib/pogo/rails/version.rb","lib/rails/generators/pogo/assets/assets_generator.rb","lib/rails/generators/pogo/assets/templates/javascript.js.pogo","test/assets_generator_test.rb","test/assets_test.rb","test/controller_generator_test.rb","test/scaffold_generator_test.rb","test/support/routes.rb","test/support/site/index.js.pogo","test/template_handler_test.rb","test/test_helper.rb"]
  s.test_files    = ["test/assets_generator_test.rb","test/assets_test.rb","test/controller_generator_test.rb","test/scaffold_generator_test.rb","test/support/routes.rb","test/support/site/index.js.pogo","test/template_handler_test.rb","test/test_helper.rb"]
  s.executables   = []
  s.require_paths = ["lib"]
end

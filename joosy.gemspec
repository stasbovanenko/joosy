require File.expand_path("../lib/joosy/rails/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "joosy"
  s.version     = Joosy::Rails::VERSION
  s.platform    = Gem::Platform::RUBY
  s.summary     = "Joosy Framework support for Ruby on Rails"
  s.email       = "boris@roundlake.ru"
  s.homepage    = "http://github.com/roundlake/joosy"
  s.description = "A gem wrapper to include Joosy via the asset pipeline."
  s.authors     = ['Boris Staal', 'Andrew Shaydurov', 'Peter Zotov', 'Alexander Pavlenko']

  s.files         = `git ls-files`.split("\n")
  s.require_paths = ["lib"]

  s.add_dependency 'rails', ">= 3.1.0"
  s.add_dependency 'coffee-rails'
  s.add_dependency 'jquery-rails'
  s.add_dependency 'haml_coffee_assets'
  s.add_dependency 'i18n-js'

  s.add_development_dependency 'guard'
  s.add_development_dependency 'guard-coffeescript'
  s.add_development_dependency 'guard-sprockets'
  s.add_development_dependency 'jasmine'
end

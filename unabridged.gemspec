$:.unshift File.expand_path('../lib/', __FILE__)
require 'unabridged/version'

Gem::Specification.new do |s|
  s.name        = 'unabridged'
  s.version     = Unabridged::VERSION
  s.date        = Time.now.strftime('%Y-%m-%d')

  s.summary     = 'Scraper for historical GitHub contribution data'
  s.description = "Scraper for historical GitHub contribution data"
  s.authors     = ['Les Aker']
  s.email       = 'me@lesaker.org'
  s.homepage    = 'https://github.com/akerl/unabridged'
  s.license     = 'MIT'

  s.files       = `git ls-files`.split
  s.test_files  = `git ls-files spec/*`.split
  s.executables = ['unabridged']

  s.add_dependency 'mercenary', '~> 0.3.4'
  s.add_dependency 'nokogiri', '~> 1.6.5'
  s.add_dependency 'curb', '~> 0.9.0'

  s.add_development_dependency 'rubocop', '~> 0.41.1'
  s.add_development_dependency 'rake', '~> 11.2.0'
  s.add_development_dependency 'codecov', '~> 0.1.1'
  s.add_development_dependency 'rspec', '~> 3.5.0'
  s.add_development_dependency 'fuubar', '~> 2.0.0'
end

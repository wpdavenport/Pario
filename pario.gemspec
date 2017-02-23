 # -*- encoding: utf-8 -*-

pario_path = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(pario_path) unless $LOAD_PATH.include?(pario_path)
require 'pario/version'

Gem::Specification.new do |s|
  s.name          = 'pario'
  s.version       = Pario::Version::STRING
  s.platform      = Gem::Platform::RUBY
  s.authors       = ['Bill Davenport', 'Anthony Burns']
  s.email         = ['wpdavenport@gmail.com']
  s.homepage      = 'http://github.com/wpdavenport/pario'
  s.summary       = %q{A Gosu game framework}
  s.description   = %q{Pario is a Gosu game framework that helps to give you structure and a start for creating games}
  
  s.required_rubygems_version = '>= 1.3.7'
  s.rubyforge_project         = 'pario'
  
  s.add_dependency('gosu',  '~> 0.10.4')
  
  s.files              = `git ls-files`.split("\n")
  s.executables        = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.default_executable = 'pario'
  s.require_paths      = ['lib']
end

# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'peek-wrench/version'

Gem::Specification.new do |gem|
  gem.name          = 'peek-wrench'
  gem.version       = Peek::Wrench::VERSION
  gem.authors       = ['Procore Frontend']
  gem.email         = ['frontend@procore.com']
  gem.description   = %q{Take a peek into Wrench.}
  gem.summary       = %q{Take a peek into Wrench.}
  gem.homepage      = 'https://github.com/peek/peek-wrench'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_dependency 'peek'
end

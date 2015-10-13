# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'simple-info/version'

Gem::Specification.new do |spec|
  spec.name          = "simple-info"
  spec.version       = SimpleInfo::VERSION
  spec.authors       = ["Jakub Niewczas"]
  spec.email         = ["niewczas.jakub@gmail.com"]
  spec.license       = "MIT"

  spec.summary       = "Store any kind of info in your project git repo."
  spec.description   = "Store, add or edit all kind of info in your git repositiory without polluting git history."
  spec.homepage      = "https://github.com/kubenstein/simple-info"


  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = ["simple-info"] 
  spec.require_paths = ["lib"]

  spec.add_dependency "thor", "~> 0.19"
  spec.add_development_dependency "rspec", "~> 3"
  spec.add_development_dependency "bundler", "~> 1"
  spec.add_development_dependency "rake", "~> 10"
end

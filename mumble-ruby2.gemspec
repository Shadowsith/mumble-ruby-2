# -*- encoding: utf-8 -*-
require File.expand_path('../lib/mumble-ruby2/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Matthew Perry", "Philip Mayer"]
  gem.email         = ["philip.mayer@shadowsith.de"]
  gem.description   = %q{Ruby API for interacting with a mumble server}
  gem.summary       = %q{Implements the mumble VOIP protocol in ruby for more easily writing clients.}
  gem.homepage      = "https://github.com/Shadowsith/mumble-ruby2"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "mumble-ruby2"
  gem.require_paths = ["lib"]
  gem.version       = Mumble::VERSION
  gem.license       = "MIT"

  gem.add_dependency "activesupport", "~> 4.2.6"
  gem.add_dependency "ruby_protobuf", "~> 0.4.11"
  gem.add_dependency "hashie", "~> 4.1.0"
  gem.add_dependency "opus-ruby", "~> 1.0.1"
  gem.add_dependency "wavefile", "~> 1.1.1"
end

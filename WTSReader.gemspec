# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'WTSReader/version'
require 'WTSReader'

Gem::Specification.new do |spec|
  spec.name          = "WTSReader"
  spec.version       = WTSReader::VERSION
  spec.authors       = ["osvaldas.popovas@flatironschool.com","blaze.i.burgess@gmail.com"]
  spec.email         = ["osvaldas.popovas@flatironschool.com","blaze.i.burgess@gmail.com"]

  spec.summary       = %q{NOTE: Write a short summary, because Rubygems requires one.}
  spec.description   = %q{NOTE: Write a longer description or delete this line.}
  spec.homepage      = "NOTE: Put your gem's website or public repo URL here."

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  # spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.executables   << 'wts-reader'
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
end

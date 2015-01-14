# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'astro_pay/version'

Gem::Specification.new do |spec|
  spec.name          = "astro_pay"
  spec.version       = AstroPay::VERSION
  spec.authors       = ["Luis Galaviz"]
  spec.email         = ["galaviz.lm@gmail.com"]
  spec.summary       = %q{Simple API connection to AstroPay.}
  spec.description   = %q{Allows you to connect to AstroPay Direct/Card API.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"

  spec.add_runtime_dependency('activemodel', ['>= 4.0'])
  spec.add_runtime_dependency('activesupport', ['>= 4.0'])
end

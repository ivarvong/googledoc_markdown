# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'googledoc_markdown/version'

Gem::Specification.new do |spec|
  spec.name          = "googledoc_markdown"
  spec.version       = GoogledocMarkdown::VERSION
  spec.authors       = ["Ivar Vong"]
  spec.email         = ["ivar@ivarvong.com"]

  spec.summary       = %q{Convert Google Document HTML to Markdown}
  spec.homepage      = "https://github.com/ivarvong/googledoc_markdown"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "roadie", "~> 3.1"
  spec.add_runtime_dependency "css_parser", "~> 1.3"
  spec.add_runtime_dependency "nokogiri", "~> 1.6"
  spec.add_runtime_dependency "kramdown", "~> 1.9"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec_junit_formatter", "0.2.2"
  spec.add_development_dependency "codeclimate-test-reporter"
  spec.add_development_dependency "guard-rspec"
end

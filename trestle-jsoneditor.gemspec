# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "trestle/jsoneditor/version"

Gem::Specification.new do |spec|
  spec.name = "trestle-jsoneditor"
  spec.version = Trestle::JSONEditor::VERSION

  spec.authors = ["Harry Brundage"]
  spec.email = ["harry@harry.me"]

  spec.summary = "JSONEditor integration for the Trestle admin framework"
  spec.description = "JSONEditor integration for the Trestle admin framework."
  spec.homepage = "https://www.trestle.io"
  spec.license = "LGPL-3.0"

  spec.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_dependency "trestle", "~> 0.9"
  spec.add_dependency "activesupport", ">= 4.2.0"

  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end

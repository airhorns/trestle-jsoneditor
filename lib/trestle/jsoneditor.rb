require "trestle"
require "trestle/jsoneditor/version"
require "trestle/jsoneditor/configuration"
require "trestle/jsoneditor/engine" if defined?(Rails)

Trestle::Configuration.option :jsoneditor, Trestle::JSONEditor::Configuration.new

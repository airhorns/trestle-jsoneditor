require "trestle/jsoneditor/field"

Trestle.configure do |config|
  config.jsoneditor.configure do |c|
    c.indent_with_tabs = false
    c.auto_download_font_awesome = false
  end

  config.hook(:stylesheets) { stylesheet_link_tag "trestle/jsoneditor" }

  config.hook(:javascripts) do
    config = Trestle.config.jsoneditor

    javascript_include_tag("trestle/jsoneditor") +
      javascript_tag("Trestle.JSONEditorConfig = #{config.to_javascript.to_json};")
  end

  config.form_field :jsoneditor, Trestle::JSONEditor::Field
end

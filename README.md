# Trestle jsoneditor Integration (trestle-jsoneditor)

> [JSONEditor](https://github.com/josdejong/jsoneditor) integration plugin for the Trestle admin framework


## Getting Started

These instructions assume you have a working Trestle application. To integrate trestle-jsoneditor, first add it to your application's Gemfile:

```ruby
gem 'trestle-jsoneditor'
```

Run `bundle install`, and then restart your Rails server.

To add a JSONEditor editor to your form, use the `editor` (or `JSONEditor`) field type:

```ruby
Trestle.resource(:articles) do
  form do |article|
    json_editor :internal_json_blob
  end
end
```

JSONEditor can be configured by defining options within `config/initializers/trestle.rb`. See https://github.com/josdejong/jsoneditor/blob/master/docs/api.md#configuration-options for the full list of configuration options. Configuration keys will be camel-cased when passed to JSONEditor.

```ruby
Trestle.configure do |config|
  config.jsoneditor.configure do |c|
    c.mode = "tree"
  end
end
```

## License

The gem is available as open source under the terms of the [LGPLv3 License](https://opensource.org/licenses/LGPL-3.0).

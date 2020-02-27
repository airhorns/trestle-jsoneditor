module Trestle
  module JSONEditor
    class Engine < ::Rails::Engine
      config.assets.precompile << "trestle/jsoneditor.js" << "trestle/jsoneditor.css"
    end
  end
end

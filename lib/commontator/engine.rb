require 'commontator'

class Commontator::Engine < ::Rails::Engine
  isolate_namespace Commontator

  initializer "commontator.assets", group: :all do |app|
    asset_path = root.join("app", "assets")
    app.config.assets.paths << asset_path unless app.config.assets.paths.include?(asset_path)
  end
end
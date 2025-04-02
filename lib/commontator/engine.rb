require 'commontator'

class Commontator::Engine < ::Rails::Engine
  isolate_namespace Commontator

  initializer "commontator.propshaft", group: :all do |app|
    asset_path = root.join("app", "assets").to_s

    unless app.config.public_file_server.paths.include?(asset_path)
      app.config.public_file_server.paths << asset_path
    end
  end
end

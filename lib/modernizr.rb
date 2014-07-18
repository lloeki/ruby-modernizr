module Modernizr
  VERSION = "2.6.3"

  PATH = File.expand_path("..", __FILE__)

  def self.path
    PATH
  end

  def self.source_path
    File.join(PATH, 'source')
  end

  # Rails "Magic"
  if defined? ::Rails::Railtie
    class Railtie < ::Rails::Railtie
      initializer "modernizr" do |app|
        app.config.assets.paths << Modernizr.source_path
      end
    end
  end
end

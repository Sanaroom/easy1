
require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Easy1
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    module YourAppName
      class Application < Rails::Application
        # 既存の設定
    
        # タイムゾーンを日本時間に設定
        config.time_zone = 'Tokyo'
    
        # デフォルトのタイムゾーンを有効にする（ActiveRecordのタイムゾーンも設定する場合）
        config.active_record.default_timezone = :local
      end
    end

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end

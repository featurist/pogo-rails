require 'test_helper'
require 'pogo-rails'

class AssetsTest < ActiveSupport::TestCase
  def setup
    require "rails"
    require "action_controller/railtie"
    require "sprockets/railtie"

    @app = Class.new(Rails::Application)
    @app.config.eager_load = false
    @app.config.active_support.deprecation = :stderr
    @app.config.assets.enabled = true
    @app.config.assets.cache_store = [ :file_store, "#{tmp_path}/cache" ]
    @app.paths["log"] = "#{tmp_path}/log/test.log"
    @app.initialize!
  end

  def teardown
    FileUtils.rm_rf "#{tmp_path}/cache"
    FileUtils.rm_rf "#{tmp_path}/log"
    File.delete "#{tmp_path}/pogo-script.js"
  end

  test "pogo-script.js is included in Sprockets environment" do
    @app.assets["pogo-script"].write_to("#{tmp_path}/pogo-script.js")

    assert_match "/lib/assets/javascripts/pogo-script.js.erb", @app.assets["pogo-script"].pathname.to_s
    assert_match "PogoScript Compiler", File.open("#{tmp_path}/pogo-script.js").read
  end

  def tmp_path
    "#{File.dirname(__FILE__)}/tmp"
  end
end

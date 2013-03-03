require 'test_helper'
require 'rails/generators/rails/controller/controller_generator'
require 'rails/generators/pogo/assets/assets_generator'

class ControllerGeneratorTest < Rails::Generators::TestCase
  tests Rails::Generators::ControllerGenerator

  destination File.expand_path("../tmp", __FILE__)
  setup do
    prepare_destination
    copy_routes
  end

  def test_assets
    run_generator %w(posts --javascript-engine=pogo --orm=false)
    assert_no_file "app/assets/javascripts/posts.js"
    assert_file "app/assets/javascripts/posts.js.pogo"
  end
end

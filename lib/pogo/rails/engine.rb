require 'rails/engine'

module Pogo
  module Rails
    class Engine < ::Rails::Engine
      config.app_generators.javascript_engine :pogo
    end
  end
end

require "rails/generators/named_base"

module Pogo
  module Generators
    class AssetsGenerator < ::Rails::Generators::NamedBase
      source_root File.expand_path("../templates", __FILE__)

      def copy_pogo
        template "javascript.js.pogo", File.join('app/assets/javascripts', class_path, "#{file_name}.js.pogo")
      end
    end
  end
end

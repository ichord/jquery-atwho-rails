require 'rails'
require 'jquery-atwho-rails/version'

# Supply generator for Rails 3.0.x or if asset pipeline is not enabled
if ::Rails.version < "3.1" || !::Rails.application.config.assets.enabled
  module Atwho
    module Generators
      class InstallGenerator < ::Rails::Generators::Base

        desc "This generator installs jquery.atwho.js #{Jquery::Atwho::Rails::VERSION}"
        source_root File.expand_path('../../../assets', __FILE__)

        def copy_js
          say_status("copying js", " jquery.atwho.js (#{Jquery::Atwho::Rails::VERSION})", :green)
          copy_file "javascripts/jquery.atwho/jquery.caret.js", "public/javascripts/jquery.atwho/jquery.caret.js"
          copy_file "javascripts/jquery.atwho/jquery.atwho.js", "public/javascripts/jquery.atwho/jquery.atwho.js"
          #copy_file "javascripts/jquery.atwho.min.js", "public/javascripts/jquery.atwho.min.js"
        end

        def copy_css
          say_status("copying css"," jquery.atwho.css",:green)
          copy_file "stylesheets/jquery.atwho.css", "public/stylesheets/jquery.atwho.css"
          #copy_file "stylesheets/jquery.atwho.min.css", "public/stylesheets/jquery.atwho.min.css"
        end
      end
    end
  end
else
  module Atwho
    module Generators
      class InstallGenerator < ::Rails::Generators::Base
        desc "Just show instructions so people will know what to do when mistakenly using generator for Rails 3.1 apps"

        def do_nothing
          say_status("deprecated", "You are using Rails 3.1 with the asset pipeline enabled, so this generator is not needed.")
          say_status("", "The necessary files are already in your asset pipeline.")
          say_status("", "Just add `//= require jquery.atwho` to your app/assets/javascripts/application.js and app/assets/stylesheets/application.css")
          say_status("", "If you upgraded your app from Rails 3.0 and still have jquery.atwho.js in your javascripts, be sure to remove them.")
          say_status("", "If you do not want the asset pipeline enabled, you may turn it off in application.rb and re-run this generator.")
          # ok, nothing
        end
      end
    end
  end
end

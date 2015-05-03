require 'rubygems'
require 'bundler/setup'
require "bundler/gem_tasks"

bower_dir = "bower_components/"

desc "sync from At.js"
task :sync do
  puts "* bower install..."
  puts %x{bower install}
end

desc "copy assets"
task refresh: :sync do
  puts " * Copying..."
  source_dir = "bower_components/At.js/dist"
  dist_dir = "lib/assets"

  js_dist_dir = "#{dist_dir}/javascripts/jquery.atwho/"
  FileUtils.copy "#{bower_dir}/Caret.js/dist/jquery.caret.js", js_dist_dir
  FileUtils.copy "#{source_dir}/js/jquery.atwho.js", js_dist_dir

  FileUtils.copy "#{source_dir}/css/jquery.atwho.css", "#{dist_dir}/stylesheets/"
  puts `ls -R #{dist_dir}`
end

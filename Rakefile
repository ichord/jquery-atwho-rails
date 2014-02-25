require "bundler/gem_tasks"

at_dir = "tmp/At.js"
bower_dir = "#{at_dir}/bower_components/"

desc "sync from At.js"
task :sync do
  puts " * syncing..."
  FileUtils.mkdir_p("tmp") unless Dir.exist? "tmp"
  unless Dir.exist? at_dir
    system "git clone git://github.com/ichord/At.js.git #{at_dir}"
  else
    Dir.chdir(at_dir) { puts %x{git pull -X theirs} }
  end
end

desc "load dependences"
task :bower_install => :sync do
  unless Dir.exist? bower_dir
    Dir.chdir(at_dir) { puts %x{bower install} }
  end
end

desc "copy assets"
task :fresh => [:bower_install, :sync] do
  puts "", " * Copying..."
  source_dir = "tmp/At.js/dist"
  dist_dir = "lib/assets"

  js_dist_dir = "#{dist_dir}/javascripts/jquery.atwho/"
  FileUtils.copy "#{bower_dir}/Caret.js/src/jquery.caret.js", js_dist_dir
  FileUtils.copy "#{source_dir}/js/jquery.atwho.js", js_dist_dir

  FileUtils.copy "#{source_dir}/css/jquery.atwho.css", "#{dist_dir}/stylesheets/"
  puts `ls -R #{dist_dir}`
end

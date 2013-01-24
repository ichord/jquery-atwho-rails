require "bundler/gem_tasks"

desc "sync from At.js"
task :sync do
  puts " * syncing..."
  at_dir = "tmp/At.js"
  FileUtils.mkdir_p("tmp") unless Dir.exist? "tmp"
  unless Dir.exist? at_dir
    system "git clone git://github.com/ichord/At.js.git #{at_dir}"
  else
    Dir.chdir(at_dir) { puts %x{git pull -X theirs} }
  end
end

desc "copy assets"
task :fresh => :sync do
  puts "", " * Copying..."
  source_dir = "tmp/At.js/dist"
  dist_dir = "lib/assets"
  FileUtils.copy "#{source_dir}/js/jquery.atwho.js", "#{dist_dir}/javascripts/"
  FileUtils.copy "#{source_dir}/css/jquery.atwho.css", "#{dist_dir}/stylesheets/"
  puts `ls -R #{dist_dir}`
end

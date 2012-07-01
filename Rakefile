require "bundler/gem_tasks"
#require "uglifier"

desc "sync from At.js"
task :sync do
  at_dir = "tmp/At.js"
  FileUtils.mkdir_p("tmp") if not Dir.exist? "tmp"
  if not Dir.exist? at_dir
    system "git clone git://github.com/ichord/At.js.git #{at_dir}"
  else
    Dir.chdir(at_dir) do
      puts %x{git pull}
    end
  end
end

desc "complie and compress"
task :fresh => :sync do
  at_dir = "tmp/At.js"
  the_js = "lib/assets/javascripts/jquery.atwho.js"
  sh "coffee -j tmp/atwho.js -c #{at_dir}/coffee"
  #File.open("atwho.js","w") { |f|
  #  f.write Uglifier.complie(File.read(the_js))
  #}
  FileUtils.copy_file "tmp/atwho.js", the_js
  FileUtils.copy_file "#{at_dir}/css/jquery.atwho.css", "lib/assets/stylesheets/jquery.atwho.css"
end

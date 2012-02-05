# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "jq_atwho-rails/version"

Gem::Specification.new do |s|
  s.name        = "atwho-rails"
  s.version     = Atwho::Rails::VERSION
  s.authors     = ["ichord"]
  s.email       = ["chord.luo@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{jquery plugin: @mentions}
  s.description = %q{This is a jQuery plugin 
    that implement Twitter/Weibo like @ mentions.}

  s.rubyforge_project = "atwho-rails"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end

# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "jquery-atwho-rails/version"

Gem::Specification.new do |s|
  s.name        = "jquery-atwho-rails"
  s.version     = Jquery::Atwho::Rails::VERSION
  s.authors     = ["ichord"]
  s.email       = ["chord.luo@gmail.com"]
  s.homepage    = "http://ichord.github.com/jquery-atwho-rails"
  s.summary     = %q{jquery plugin: @mentions}
  s.description = %q{This is a jQuery plugin
    that implement Github-like mentions.}

  s.rubyforge_project = "jquery-atwho-rails"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rspec"
  s.add_development_dependency "generator_spec"
  # s.add_runtime_dependency "rest-client"
end

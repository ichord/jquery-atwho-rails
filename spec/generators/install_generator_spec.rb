require 'spec_helper'

describe Atwho::Generators::InstallGenerator do
  include GeneratorSpec::TestCase
  
  destination File.expand_path("../../../tmp/", __FILE__)
  before(:all) do
    prepare_destination
    run_generator
  end

  it "generate assets files" do
    js_prefix = "public/javascripts"
    css_prefix = "public/stylesheets"

    assert_file "#{js_prefix}/jquery.atwho.js"
    #assert_file "#{js_prefix}/jquery.atwho.min.js"

    assert_file "#{css_prefix}/jquery.atwho.css"
    #assert_file "#{css_prefix}/jquery.atwho.min.css"
  end
end

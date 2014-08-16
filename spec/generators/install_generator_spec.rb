require 'spec_helper'

describe Atwho::Generators::InstallGenerator do
  include GeneratorSpec::TestCase

  destination File.expand_path("../../../tmp/", __FILE__)
  before(:all) do
    prepare_destination
    run_generator
  end

  it "generate assets files" do
    if ::Rails.version < "3.1"
      assert_file "public/javascripts/jquery.atwho/jquery.atwho.js"
      assert_file "public/stylesheets/jquery.atwho.css"
    end
  end
end

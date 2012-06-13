require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')
require 'ruby/shared/loader_spec'
require 'ruby/shared/classic_rails/loader_spec'

module PhusionPassenger

describe "Classic Rails 2.3 loader" do
	include LoaderSpecHelper

	before :each do
		@stub = register_stub(ClassicRailsStub.new("rails2.3"))
	end

	def start
		@loader = Loader.new(["ruby", "#{PhusionPassenger.helper_scripts_dir}/classic-rails-loader.rb"], @stub.app_root)
		return @loader.start
	end

	it_should_behave_like "a loader"
	it_should_behave_like "a classic Rails loader"
end

end # module PhusionPassenger
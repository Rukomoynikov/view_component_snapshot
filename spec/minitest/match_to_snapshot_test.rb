# frozen_string_literal: true

require "view_component/test_helpers"
require "view_component"
require "rails"

require "byebug"
RSpec.describe "Minitest" do
  module ViewComponent
    class Base
      def self.config
        config = Struct.new(:view_component_path)
        config.new("jlds")
      end
    end
  end

  class HelloWorldComponent < ViewComponent::Base
    # def initialize; end
    def config
      Struct(:view_component_path)
    end

    def call
      content_tag :p, "<div>Hello World!</div>"
    end
  end

  class HelloWorldComponentTest < ViewComponent::TestCase
    test "when application was submitted" do
      byebug
      rendered_component = HelloWorldComponent.new

      assert_match_snapshot(render_inline(rendered_component))
    end
  end

  describe "Match to snapshot" do
    it 'shoud respond to "assert_match_snapshot" method' do
      ViewComponent::TestHelpers.respond_to? :assert_match_snapshot
    end

    it "records rendered content to file" do
      HelloWorldComponentTest.new("new test").test_when_application_was_submitted
      byebug
    end
  end
end

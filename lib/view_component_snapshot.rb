# frozen_string_literal: true

require_relative "view_component_snapshot/version"

# ViewComponent::TestCase
module ViewComponentSnapshot
  class Error < StandardError; end

  def assert_component_match_to_snapshot(content)
    p content
  end
end
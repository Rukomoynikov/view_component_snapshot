require "test_helper"

class ViewComponentSnapshotTest < ViewComponent::TestCase
  def test_respond_to_assert_component_to_match_snaphost
    assert respond_to?(:assert_component_to_match_snaphost)
  end
end
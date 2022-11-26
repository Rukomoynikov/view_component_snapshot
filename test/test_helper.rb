require "minitest/autorun"
require "minitest/spec"
require "minitest/reporters"
require 'byebug'
require "view_component"

# Configure gem
require "view_component_snapshot"
ViewComponent::TestCase.include ViewComponentSnapshot

Minitest::Reporters.use!
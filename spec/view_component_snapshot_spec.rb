# frozen_string_literal: true

RSpec.describe ViewComponentSnapshot do
  it "has a version number" do
    expect(ViewComponentSnapshot::VERSION).not_to be nil
  end
end

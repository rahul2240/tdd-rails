require 'rails_helper'

RSpec.describe Album do
  it "title should be present" do
    album = Album.new
    expect(album).not_to be_valid
  end

  it "title should not be too long" do
    album = Album.new(title: "a"* 101)
    expect(album).not_to be_valid
  end
end

require 'rails_helper'

RSpec.describe Album do
  it "title should be present" do
    album = Album.new
    expect(album).not_to be_valid
  end
end

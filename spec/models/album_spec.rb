require 'rails_helper'

RSpec.describe Album do
  subject { Album.new }

  it "title should be present" do
    expect(subject).not_to be_valid
  end

  it "title should not be too long" do
    subject.title =  "a"* 101
    expect(subject).not_to be_valid
  end
end

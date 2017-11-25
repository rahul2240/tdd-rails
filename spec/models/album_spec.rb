# == Schema Information
#
# Table name: albums
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  title      :string
#

require 'rails_helper'

RSpec.describe Album do

  subject { build(:album) }

  it "is not vaild without a title" do
    expect(subject).not_to be_valid
  end

  it "is not valid with title too long" do
    subject.title =  "a"* 101
    expect(subject).not_to be_valid
  end

  it "is valid with proper data" do
    expect(subject).to be_valid
  end
end

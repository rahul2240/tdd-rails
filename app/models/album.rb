# == Schema Information
#
# Table name: albums
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  title      :string
#

class Album < ApplicationRecord
  validates :title, presence: true, length: { maximum: 100 }
end

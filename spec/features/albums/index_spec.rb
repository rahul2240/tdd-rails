require 'rails_helper'

RSpec.feature 'Albums list' do

  scenario 'unauthenticated user' do
    visit root_path
    within '#content' do
      expect(find('h1')).to have_content('Albums')
    end
  end

  let(:album){ build(:album) }

  scenario 'create albums' do
    visit root_path
    within '#new_album' do
      fill_in('album_title', with: album.title)
      click_button('Submit')
    end
    expect(find('p')).to have_content(album.title)
  end

end

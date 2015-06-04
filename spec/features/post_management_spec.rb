require 'rails_helper'

describe 'adding a post' do

  it "a user can add a post to the site" do
    visit '/'
    click_link 'Add a post'
    fill_in 'Title', with: 'mushroom risotto'
    fill_in 'Content', with: 'cooking time: 20mins'
    click_button 'Submit'

    expect(page).to have_content 'mushroom risotto'

  end

end
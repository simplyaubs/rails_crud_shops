require 'spec_helper'

feature 'CRUD shops' do
  scenario 'User can create a list of shops' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a shop'
    fill_in 'Name', with: 'The Coffee Bean'
    fill_in 'Specialty', with: 'Coffee'
    click_on 'Add shop'
    expect(page).to have_content 'The Coffee Bean'
    expect(page).to have_content 'Coffee'
  end
end
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

  scenario 'User can update a shop from list' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a shop'
    fill_in 'Name', with: 'The Coffee Bean'
    fill_in 'Specialty', with: 'Coffee'
    click_on 'Add shop'
    expect(page).to have_content 'The Coffee Bean'
    expect(page).to have_content 'Coffee'
    click_on 'The Coffee Bean'
    expect(page).to have_content 'The Coffee Bean'
    expect(page).to have_content 'Coffee'
    click_on 'Edit'
    fill_in 'Name', with: 'Burger King'
    fill_in 'Specialty', with: 'Burgers'
    click_on 'Update shop'
    expect(page).to have_content 'Burger King'
    expect(page).to have_content 'Burgers'
    expect(page).to_not have_content 'The Coffee Bean'
    expect(page).to_not have_content 'Coffee'
  end

  scenario 'User can delete a shop from list' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a shop'
    fill_in 'Name', with: 'The Coffee Bean'
    fill_in 'Specialty', with: 'Coffee'
    click_on 'Add shop'
    expect(page).to have_content 'The Coffee Bean'
    expect(page).to have_content 'Coffee'
    click_on 'The Coffee Bean'
    expect(page).to have_content 'The Coffee Bean'
    expect(page).to have_content 'Coffee'
    click_on 'Delete shop'
    expect(page).to_not have_content 'The Coffee Bean'
    expect(page).to_not have_content 'Coffee'
  end
end
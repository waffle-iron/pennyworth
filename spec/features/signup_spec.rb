require 'spec_helper'

describe 'Signup' do
  it 'should be possible if login, email, password and password_confirmation are given', :js => true do
    visit new_user_registration_path
    fill_in 'user_email', with: 'foo@example.com'
    fill_in 'user_password', with: 'test123456789'
    fill_in 'user_password_confirmation', with: 'test123456789'
    click_button 'Sign up'
    expect(page).to have_content('Welcome to Pennyworth, foo@example.com')
  end
end

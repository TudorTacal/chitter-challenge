require 'spec_helper'

feature "First Page" do
  include Helpers
  scenario "I want to be allowed to sign up" do
    visit '/'
    click_link "Sign Up"
    expect(page.current_path).to eq '/sign_up'
  end

  scenario "I want to be allowed to login" do
    visit '/'
    click_link "Login"
    expect(page.current_path).to eq '/log_in/new'
  end
end

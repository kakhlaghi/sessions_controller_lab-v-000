require 'rails_helper'

RSpec.describe "homepage", :type => :view do
  it "if the user is not logged in, the page should show them a login link." do
    if !session[:name]
      visit '/login'
      click_button 'login'
      expect(page.body).to include "Username"
    else
          visit '/'

      expect(page.body).to include "hi, #{name}"
      click_button 'logout'
    end
  end
  
end
require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'ESOLve'" do
      visit '/static_pages/home'
      page.should have_content('ESOLve')
    end

    it "should have the content 'Students'" do
      visit '/static_pages/home'
      page.should have_content('Students')
    end

  end

end
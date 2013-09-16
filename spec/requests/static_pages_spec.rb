require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Welcome'" do
      visit root_path
      page.should have_content('Welcome')
    end

    it "should have the content 'Students'" do
      visit root_path
      page.should have_content('Students')
    end

    it "should have the right title" do
      visit root_path
      page.should have_selector('title', :text => 'ESOLve')
    end

    it "should have the h3 'Students'" do
      visit root_path
      page.should have_selector('h3', :text => 'Students')
    end

    it "should have the h3 'Charts/Reports'" do
      visit root_path
      page.should have_selector('h3', :text => 'Charts/Reports')
    end

  end

end
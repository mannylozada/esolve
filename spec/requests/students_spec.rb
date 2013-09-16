require 'spec_helper'


describe "Students" do

  subject { page }

  before { visit students_path }

  it "works! (now write some real specs)" do
    # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    get students_path
    response.status.should be(200)
  end

  it { should have_selector('h3', :text => 'Students') }
  it { should have_selector('tr', :text => 'FCAT') }

end

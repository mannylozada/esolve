require 'spec_helper'

describe "students/index" do
  before(:each) do
    assign(:students, [
      stub_model(Student,
        :firstname => "Firstname",
        :lastname => "Lastname",
        :student_number => "Student Number",
        :grade => 1,
        :ese_code => "Ese Code",
        :fcat_reading => 2,
        :fcat_math => 3,
        :cella_listening_speaking => 4,
        :cella_reading => 5,
        :cella_writing => 6,
        :student_with_dissability => false,
        :economically_disadvantaged => false,
        :white => false,
        :hispanic => false,
        :black => false,
        :asian => false,
        :multiracial => false
      ),
      stub_model(Student,
        :firstname => "Firstname",
        :lastname => "Lastname",
        :student_number => "Student Number",
        :grade => 1,
        :ese_code => "Ese Code",
        :fcat_reading => 2,
        :fcat_math => 3,
        :cella_listening_speaking => 4,
        :cella_reading => 5,
        :cella_writing => 6,
        :student_with_dissability => false,
        :economically_disadvantaged => false,
        :white => false,
        :hispanic => false,
        :black => false,
        :asian => false,
        :multiracial => false
      )
    ])
  end

  it "renders a list of students" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Firstname".to_s, :count => 2
    assert_select "tr>td", :text => "Lastname".to_s, :count => 2
    assert_select "tr>td", :text => "Student Number".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Ese Code".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end

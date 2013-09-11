require 'spec_helper'

describe "students/show" do
  before(:each) do
    @student = assign(:student, stub_model(Student,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Firstname/)
    rendered.should match(/Lastname/)
    rendered.should match(/Student Number/)
    rendered.should match(/1/)
    rendered.should match(/Ese Code/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/5/)
    rendered.should match(/6/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
  end
end

require 'spec_helper'

describe "students/edit" do
  before(:each) do
    @student = assign(:student, stub_model(Student,
      :firstname => "MyString",
      :lastname => "MyString",
      :student_number => "MyString",
      :grade => 1,
      :ese_code => "MyString",
      :fcat_reading => 1,
      :fcat_math => 1,
      :cella_listening_speaking => 1,
      :cella_reading => 1,
      :cella_writing => 1,
      :student_with_dissability => false,
      :economically_disadvantaged => false,
      :white => false,
      :hispanic => false,
      :black => false,
      :asian => false,
      :multiracial => false
    ))
  end

  it "renders the edit student form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => students_path(@student), :method => "post" do
      assert_select "input#student_firstname", :name => "student[firstname]"
      assert_select "input#student_lastname", :name => "student[lastname]"
      assert_select "input#student_student_number", :name => "student[student_number]"
      assert_select "input#student_grade", :name => "student[grade]"
      assert_select "input#student_ese_code", :name => "student[ese_code]"
      assert_select "input#student_fcat_reading", :name => "student[fcat_reading]"
      assert_select "input#student_fcat_math", :name => "student[fcat_math]"
      assert_select "input#student_cella_listening_speaking", :name => "student[cella_listening_speaking]"
      assert_select "input#student_cella_reading", :name => "student[cella_reading]"
      assert_select "input#student_cella_writing", :name => "student[cella_writing]"
      assert_select "input#student_student_with_dissability", :name => "student[student_with_dissability]"
      assert_select "input#student_economically_disadvantaged", :name => "student[economically_disadvantaged]"
      assert_select "input#student_white", :name => "student[white]"
      assert_select "input#student_hispanic", :name => "student[hispanic]"
      assert_select "input#student_black", :name => "student[black]"
      assert_select "input#student_asian", :name => "student[asian]"
      assert_select "input#student_multiracial", :name => "student[multiracial]"
    end
  end
end

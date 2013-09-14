require 'spec_helper'

describe "grades/edit" do
  before(:each) do
    @grade = assign(:grade, stub_model(Grade,
      :grade_name => "MyString"
    ))
  end

  it "renders the edit grade form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => grades_path(@grade), :method => "post" do
      assert_select "input#grade_grade_name", :name => "grade[grade_name]"
    end
  end
end

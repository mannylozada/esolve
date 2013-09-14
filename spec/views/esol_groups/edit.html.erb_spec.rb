require 'spec_helper'

describe "esol_groups/edit" do
  before(:each) do
    @esol_group = assign(:esol_group, stub_model(EsolGroup,
      :group_name => "MyString"
    ))
  end

  it "renders the edit esol_group form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => esol_groups_path(@esol_group), :method => "post" do
      assert_select "input#esol_group_group_name", :name => "esol_group[group_name]"
    end
  end
end

require 'spec_helper'

describe "esol_groups/show" do
  before(:each) do
    @esol_group = assign(:esol_group, stub_model(EsolGroup,
      :group_name => "Group Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Group Name/)
  end
end

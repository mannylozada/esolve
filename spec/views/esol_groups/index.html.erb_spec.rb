require 'spec_helper'

describe "esol_groups/index" do
  before(:each) do
    assign(:esol_groups, [
      stub_model(EsolGroup,
        :group_name => "Group Name"
      ),
      stub_model(EsolGroup,
        :group_name => "Group Name"
      )
    ])
  end

  it "renders a list of esol_groups" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Group Name".to_s, :count => 2
  end
end

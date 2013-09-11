require 'spec_helper'

describe "languages/index" do
  before(:each) do
    assign(:languages, [
      stub_model(Language,
        :language_name => "Language Name"
      ),
      stub_model(Language,
        :language_name => "Language Name"
      )
    ])
  end

  it "renders a list of languages" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Language Name".to_s, :count => 2
  end
end

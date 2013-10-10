require 'spec_helper'

describe "users/index.html.erb" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :full_name => "Full Name"
      ),
      stub_model(User,
        :full_name => "Full Name"
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Full Name".to_s, :count => 2
  end
end

require 'spec_helper'

describe "addresses/index.html.erb" do
  before(:each) do
    assign(:addresses, [
      stub_model(Address,
        :street => "Street",
        :city => "City",
        :state => "State",
        :country_code => "Country Code"
      ),
      stub_model(Address,
        :street => "Street",
        :city => "City",
        :state => "State",
        :country_code => "Country Code"
      )
    ])
  end

  it "renders a list of addresses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Street".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "City".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "State".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Country Code".to_s, :count => 2
  end
end

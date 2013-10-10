require 'spec_helper'

describe "addresses/edit.html.erb" do
  before(:each) do
    @address = assign(:address, stub_model(Address,
      :street => "MyString",
      :city => "MyString",
      :state => "MyString",
      :country_code => "MyString"
    ))
  end

  it "renders the edit address form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => addresses_path(@address), :method => "post" do
      assert_select "input#address_street", :name => "address[street]"
      assert_select "input#address_city", :name => "address[city]"
      assert_select "input#address_state", :name => "address[state]"
      assert_select "input#address_country_code", :name => "address[country_code]"
    end
  end
end

require 'spec_helper'

describe "addresses/new.html.erb" do
  before(:each) do
    assign(:address, stub_model(Address,
      :street => "MyString",
      :city => "MyString",
      :state => "MyString",
      :country_code => "MyString"
    ).as_new_record)
  end

  it "renders new address form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => addresses_path, :method => "post" do
      assert_select "input#address_street", :name => "address[street]"
      assert_select "input#address_city", :name => "address[city]"
      assert_select "input#address_state", :name => "address[state]"
      assert_select "input#address_country_code", :name => "address[country_code]"
    end
  end
end

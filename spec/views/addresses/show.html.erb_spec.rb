require 'spec_helper'

describe "addresses/show.html.erb" do
  before(:each) do
    @address = assign(:address, stub_model(Address,
      :street => "Street",
      :city => "City",
      :state => "State",
      :country_code => "Country Code"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Street/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/City/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/State/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Country Code/)
  end
end

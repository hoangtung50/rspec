require 'spec_helper'

describe Address do
  it 'must have a street' do
    a = Address.new
    a.should_not be_valid
    a.errors[:street].should_not be_nil
  end
  it 'must have a city' do
    a = Address.new
    a.should_not be_valid
    a.errors[:city].should_not be_nil
  end
  it 'must have a state' do
    a = Address.new
    a.should_not be_valid
    a.errors[:state].should_not be_nil
  end
end

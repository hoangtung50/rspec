require 'spec_helper'

describe User do
  it 'must have a full name' do
  a = User.new
  a.should_not be_valid
  a.errors[:full_name].should_not be_nil
  end

end

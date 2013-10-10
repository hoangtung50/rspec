require 'spec_helper'


describe Address do
  context 'when create new' do
    it 'must have a street' do
      a = Address.new
      a.should_not be_valid
      a.errors[:street].should_not be_empty
    end
    it 'must have a city' do
      a = Address.new
      a.should_not be_valid
      a.errors[:city].should_not be_empty
    end
    it 'must have a state' do
      a = Address.new
      a.should_not be_valid
      a.errors[:state].should_not be_empty
    end 

    it 'state is US if blank' do
      .....
      save

      test state should == US  
    end

    it 'state not change if no blank' do
      .....
      save

      test state should == US  
    end    

  end  
  


end

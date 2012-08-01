require 'spec_helper'

module Ecm
  module Seminars
    describe Location do
      subject { FactoryGirl.build(:ecm_seminars_location) }
      
      it { should have_many(:events) }
      
      it "should require a locale" do
        location = FactoryGirl.create(:ecm_seminars_location)

        location.locale = nil
        location.should_not be_valid
      end
      
      it "should only accept available locales" do
        location = FactoryGirl.build(:ecm_seminars_location, :locale => 'invalid')
        location.should_not be_valid      
      end
      
      it "should have a friendly id" do
        location = FactoryGirl.create(:ecm_seminars_location, :name => 'Look, a slugged location!')
        location.to_param.should == 'look-a-slugged-location'
      end
    end
  end
end    

require 'spec_helper'

module Ecm
  module Seminars
    describe Seminar do
      subject { FactoryGirl.build(:ecm_seminars_seminar) }
      
      it { should belong_to(:category) }
      it { should have_many(:events) }
      
      it "should require a name" do
        seminar = FactoryGirl.create(:ecm_seminars_seminar)

        seminar.name = nil
        seminar.should_not be_valid
      end
      
      it "should have a friendly id" do
        seminar = FactoryGirl.create(:ecm_seminars_seminar, :name => 'Look, a slugged seminar!')
        seminar.to_param.should == 'look-a-slugged-seminar'
      end
    end
  end
end    

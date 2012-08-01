require 'spec_helper'

module Ecm
  module Seminars
    describe Event do
      subject { FactoryGirl.build(:ecm_seminars_event) }
      
      it { should belong_to(:location) }
      it { should belong_to(:seminar) }
      
      it { should validate_presence_of :begins_at }
      it { should validate_presence_of :ends_at }
      
#      it "should require a locale" do
#        location = FactoryGirl.create(:ecm_seminars_event)

#        location.locale = nil
#        location.should_not be_valid
#      end
#      
#      it "should only accept available locales" do
#        location = FactoryGirl.build(:ecm_seminars_event, :locale => 'invalid')
#        location.should_not be_valid      
#      end
#      
#      it "should have a friendly id" do
#        location = FactoryGirl.create(:ecm_seminars_event, :name => 'Look, a slugged event!')
#        location.to_param.should == 'look-a-slugged-event'
#      end
    end
  end
end    

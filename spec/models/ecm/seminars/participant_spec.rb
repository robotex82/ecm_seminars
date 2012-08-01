require 'spec_helper'

module Ecm
  module Seminars
    describe Participant do
      subject { FactoryGirl.build(:ecm_seminars_participant) }
      
      it { should belong_to(:registration) }
      
      it { should validate_presence_of :birthdate }
      it { should validate_presence_of :firstname }
      it { should validate_presence_of :lastname }      
      it { should validate_presence_of :salutation }
    end
  end    
end

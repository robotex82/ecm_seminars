require 'spec_helper'

module Ecm
  module Seminars
    describe Registration do
      subject { FactoryGirl.build(:ecm_seminars_registration) }
      
      it { should belong_to(:event) }
      it { should have_many(:participants) }      
      
      it { should validate_presence_of :birthdate }
      it { should validate_presence_of :country }            
      it { should validate_presence_of :city }
      it { should validate_presence_of :firstname }
      it { should validate_presence_of :lastname }      
      it { should validate_presence_of :salutation }
      it { should validate_presence_of :street }      
      it { should validate_presence_of :zipcode }      
    end
  end    
end

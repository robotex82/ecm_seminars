require 'spec_helper'

module Ecm
  module Seminars
    describe Category do
      subject { FactoryGirl.build(:ecm_seminars_category) }
      
      it { should have_many(:seminars) }
      
      it "should respond to root" do
        category = FactoryGirl.create(:ecm_seminars_category)
        category.should respond_to(:root)
      end
      
      it "should require a locale if it is a root node" do
        category = FactoryGirl.create(:ecm_seminars_category)
        category.should be_root
        
        category.locale = nil
        category.should_not be_valid
      end
      
      it "should not accept a locale if it is not a root node" do
        category = FactoryGirl.create(:ecm_seminars_category_with_parent)
        category.should_not be_root
        
        category.locale = I18n.locale
        category.should_not be_valid
      end
      
      it "should only accept available locales" do
        category = FactoryGirl.build(:ecm_seminars_category, :locale => 'invalid')
        category.should_not be_valid      
      end
      
      it "should have a friendly id" do
        category = FactoryGirl.create(:ecm_seminars_category, :name => 'Look, a slugged category!')
        category.to_param.should == 'look-a-slugged-category'
      end
    end
  end
end    

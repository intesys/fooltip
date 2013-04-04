require 'spec_helper'

describe "Fooltip" do

  context "ActiveRecord::Base" do
    it "should respond to :has_fooltips" do
      ActiveRecord::Base.should respond_to :has_fooltips
    end
  end

  context "an instance of an ActiveRecord class calling 'has_fooltips'" do
    let(:tf) { TestFooltip.new }
    it "should respond to :fooltips" do
      tf.should respond_to :fooltips
    end
    it "should have no records in fooltips before any have been added" do
      tf.fooltips.should be_empty
    end
    it "should have have a record in fooltips if one has been added" do
      tf.save
      tf.fooltips << FactoryGirl.create(:container)
      tf.fooltips.count.should == 1
    end
    it "should add an Association when adding a container to fooltips" do
      tf.save
      c = FactoryGirl.create(:container)
      -> { tf.fooltips << c }.should change(Fooltip::Association, :count).by(1)
    end
    it "should remove an Association when deleting a container from fooltips" do
      tf.save
      c = FactoryGirl.create(:container)
      tf.fooltips << c
      -> { tf.fooltips.last.destroy }.should change(Fooltip::Association, :count).by(-1)
    end
    it "should remove an Association when deleting its owner" do
      tf.save
      c = FactoryGirl.create(:container)
      tf.fooltips << c
      -> { tf.destroy }.should change(Fooltip::Association, :count).by(-1)
    end
  end

end

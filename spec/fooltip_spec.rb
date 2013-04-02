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
  end

end

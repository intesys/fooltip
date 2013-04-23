require 'spec_helper'

module Fooltip
  describe Association do
    it { should belong_to(:owner) }
    it { should belong_to(:container) }

    it { should validate_presence_of :owner_id }
    it { should validate_presence_of :owner_type }
    it { should validate_presence_of :container_id }

    it { should validate_uniqueness_of(:owner_id).scoped_to(:owner_type, :container_id) }

    context "an instance of an ActiveRecord class calling 'has_fooltips'" do
      let(:tf) { TestFooltip.new }
      it "should respond to :fooltips" do
        tf.should respond_to :fooltips
      end
      it "should not have any fooltips before any have been added" do
        tf.fooltips.should be_empty
      end
    end

  end
end

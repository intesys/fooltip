require 'spec_helper'

module Fooltip
  describe Popup do
    it { should have_many(:links) }
    it { should validate_presence_of(:name) }

    it "should destroy all associated links when destroyed" do
      p = FactoryGirl.create(:popup, name: 'Test Popup')
      c = FactoryGirl.create(:container)
      FactoryGirl.create(:link, container: c, popup: p)
      -> { p.destroy }.should change(Link, :count).by(-1)
    end
  end
end

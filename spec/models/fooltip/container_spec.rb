require 'spec_helper'

module Fooltip
  describe Container do
    it { should have_many(:links) }

    it "should destroy all associated links when destroyed" do
      c = FactoryGirl.create(:container)
      p = FactoryGirl.create(:popup)
      FactoryGirl.create(:link, container: c, popup: p)
      -> { c.destroy }.should change(Link, :count).by(-1)
    end
  end
end

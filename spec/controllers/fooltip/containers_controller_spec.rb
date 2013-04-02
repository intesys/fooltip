require 'spec_helper'

module Fooltip
  describe ContainersController do

    describe "GET 'show'" do
      it "returns http success" do
        container = FactoryGirl.create(:container)
        get 'show', id: container.id, use_route: 'fooltip'
        response.should be_success
      end
    end

  end
end

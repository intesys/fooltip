require_dependency "fooltip/application_controller"

module Fooltip
  class ContainersController < ApplicationController
    def show
      @container = Container.find params[:id] rescue nil
    end
  end
end

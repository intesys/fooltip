require 'spec_helper'

module Fooltip
  describe Container do
    it { should have_many(:links) }
  end
end

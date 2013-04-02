require 'spec_helper'

module Fooltip
  describe Popup do
    it { should have_many(:links) }
    it { should validate_presence_of(:name) }
  end
end

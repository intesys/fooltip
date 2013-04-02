require 'spec_helper'

module Fooltip
  describe Link do
    it { should validate_presence_of :container }
    it { should validate_presence_of :popup }
    it { should validate_presence_of :x }
    it { should validate_presence_of :y }
    it { should validate_presence_of :popup_direction }
  end
end

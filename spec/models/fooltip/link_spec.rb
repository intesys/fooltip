require 'spec_helper'

module Fooltip
  describe Link do
    it { should validate_presence_of :container }
    it { should validate_presence_of :popup }
    it { should validate_presence_of :x }
    it { should validate_presence_of :y }
    it { should validate_presence_of :placement }
    it { should validate_presence_of :trigger }

    context ".placment_string" do
      { 1 => 'top', 2 => 'right', 3 => 'bottom', 4 => 'left' }.each do |key, value|
        it "should return '#{value}' for #{key}" do
          subject.placement = key
          subject.placement_string.should == value
        end
      end
    end

    context ".trigger_string" do
      { 1 => 'click', 2 => 'hover', 3 => 'focus', 4 => 'manual' }.each do |key, value|
        it "should return '#{value}' for #{key}" do
          subject.trigger = key
          subject.trigger_string.should == value
        end
      end
    end

  end
end

module Fooltip
  class Link < ::ActiveRecord::Base
    PLACEMENT_MAPPINGS = { 1 => 'top', 2 => 'right', 3 => 'bottom', 4 => 'left' }
    TRIGGER_MAPPINGS = { 1 => 'click', 2 => 'hover', 3 => 'focus', 4 => 'manual' }

    belongs_to :container
    belongs_to :popup

    validates :container, presence: true
    validates :popup, presence: true
    validates :placement, presence: true
    validates :trigger, presence: true
    validates :x, presence: true
    validates :y, presence: true

    def placement_string
      PLACEMENT_MAPPINGS[placement] || 'right'
    end

    def trigger_string
      TRIGGER_MAPPINGS[trigger] || 'focus'
    end

  end
end

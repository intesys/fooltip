module Fooltip
  class Link < ::ActiveRecord::Base
    attr_accessible :popup_direction, :x, :y
    belongs_to :container
    belongs_to :popup

    validates :container, presence: true
    validates :popup, presence: true
    validates :popup_direction, presence: true
    validates :x, presence: true
    validates :y, presence: true
  end
end

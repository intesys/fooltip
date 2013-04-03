module Fooltip
  class Popup < ::ActiveRecord::Base
    translates :title, :content, fallbacks_for_empty_translations: true
    attr_accessible :content, :title, :identifier, :min_width, :min_height,
      :max_width, :max_height
    has_many :links, dependent: :destroy
    validates :identifier, presence: true
  end
end

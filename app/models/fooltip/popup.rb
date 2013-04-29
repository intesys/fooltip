module Fooltip
  class Popup < ::ActiveRecord::Base
    translates :title, :content, fallbacks_for_empty_translations: true
    accepts_nested_attributes_for :translations
    attr_accessible :content, :title, :identifier, :min_width, :min_height,
      :max_width, :max_height, :translations_attributes
    has_many :links, dependent: :destroy
    has_many :containers, through: :links
    validates :identifier, presence: true
  end
end

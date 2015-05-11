module Fooltip
  class Popup < ::ActiveRecord::Base
    translates :title, :content, fallbacks_for_empty_translations: true
    accepts_nested_attributes_for :translations
    has_many :links, dependent: :destroy
    has_many :containers, through: :links
    validates :identifier, presence: true
  end
end

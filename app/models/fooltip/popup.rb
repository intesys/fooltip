module Fooltip
  class Popup < ::ActiveRecord::Base
    translates :content, fallbacks_for_empty_translations: true
    attr_accessible :content, :name
    has_many :links

    validates :name, presence: true
  end
end

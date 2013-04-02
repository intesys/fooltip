class TestFooltip < ActiveRecord::Base
  translates :name, fallbacks_for_empty_translations: true
  attr_accessible :name, :translations_attributes
  accepts_nested_attributes_for :translations
  has_fooltips
end

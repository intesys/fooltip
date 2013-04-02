class TestModel < ActiveRecord::Base
  translates :a, fallbacks_for_empty_translations: true
  attr_accessible :a, :translations_attributes
  accepts_nested_attributes_for :translations
end

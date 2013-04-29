module Fooltip
  class Container < ::ActiveRecord::Base
    mount_uploader :image, ImageUploader
    translates :title, :description, fallbacks_for_empty_translations: true
    attr_accessible :description, :title, :translations_attributes, :links_attributes, :image, :remove_image
    has_many :links, dependent: :destroy
    has_many :associations, dependent: :destroy
    has_many :popups, through: :links
    accepts_nested_attributes_for :translations, :links

    def display_name
      (title.blank? ? image.file.file : title) rescue to_s
    end
  end
end

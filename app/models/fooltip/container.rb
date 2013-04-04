module Fooltip
  class Container < ::ActiveRecord::Base
    mount_uploader :image, ImageUploader
    translates :title, :description, fallbacks_for_empty_translations: true
    attr_accessible :description, :title
    has_many :links, dependent: :destroy
    has_many :associations, dependent: :destroy
  end
end

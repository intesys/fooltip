module Fooltip
  class Container < ::ActiveRecord::Base
    attr_accessible :description, :title

    translates :title, :description, fallbacks_for_empty_translations: true

    mount_uploader :image, ImageUploader
  end
end

module Fooltip
  module ActiveRecord

    def has_fooltips
      has_many :fooltip_associations, as: :owner, class_name: "Fooltip::Association", dependent: :destroy
      has_many :fooltips, through: :fooltip_associations, source: :container, class_name: "Fooltip::Container"
      accepts_nested_attributes_for :fooltip_associations, reject_if: :all_blank, allow_destroy: true
    end

  end
end


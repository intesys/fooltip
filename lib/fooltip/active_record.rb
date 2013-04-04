module Fooltip
  module ActiveRecord

    def has_fooltips(options = {})
      #options.assert_valid_keys(:x)

      attr_accessible :fooltip_ids
      has_many :fooltip_associations, as: :owner, class_name: "Fooltip::Association", dependent: :destroy
      has_many :fooltips, through: :fooltip_associations, source: :container, class_name: "Fooltip::Container"
    end

  end
end


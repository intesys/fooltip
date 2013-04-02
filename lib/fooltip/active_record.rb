module Fooltip
  module ActiveRecord

    def has_fooltips(options = {})
      #options.assert_valid_keys(:x)

      attr_accessible :fooltip_ids
      has_many :fooltips, class_name: "Fooltip::Association", as: :owner, source: "Fooltip::Container"
    end

  end
end


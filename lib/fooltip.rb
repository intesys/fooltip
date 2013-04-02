require "globalize3"
require "carrierwave"
require "haml"
require "jquery-rails"
require "fooltip/engine"
require "fooltip/active_record"

module Fooltip
  #include ActiveSupport::Configurable

  #config.x = :X
  #config_accessor :x
end

ActiveRecord::Base.extend(Fooltip::ActiveRecord)

require "globalize"
require "carrierwave"
require "haml"
require "jquery-rails"
require "sass-rails"
require "fooltip/engine"
require "fooltip/active_record"

module Fooltip
  #include ActiveSupport::Configurable

  #config.x = :X
  #config_accessor :x
end

ActiveRecord::Base.extend(Fooltip::ActiveRecord)

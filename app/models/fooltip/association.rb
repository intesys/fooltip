module Fooltip
  class Association < ::ActiveRecord::Base
    belongs_to :owner, polymorphic: true
    belongs_to :container

    validates :owner_id, presence: true, uniqueness: { scope: [:owner_type, :container_id] }
    validates :owner_type, presence: true
    validates :container_id, presence: true
  end
end

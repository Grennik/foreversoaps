class Orderstatus < ActiveRecord::Base
  has_many :transactions

  default_scope { where(active: true) }
end

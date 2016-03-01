class Transaction < ActiveRecord::Base
  belongs_to :users
  belongs_to :orderstatus
  has_many :orderitems
  before_create :set_order_status

private
  def set_order_status
    self.orderstatus_id = 1
  end


end

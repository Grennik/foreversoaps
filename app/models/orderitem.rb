class Orderitem < ActiveRecord::Base
  belongs_to :items
  belongs_to :transactions
  validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }
  before_save :finalize


  def finalize
    self[:total_price] = (quantity * self[:price])
  end
end

class Shipping < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :name, :message => " must not be empty"
  validates_presence_of :street_address, :message => " must not be empty"
  validates_presence_of :zipcode, :message => " must not be empty"
  validates_numericality_of :zipcode, :message => " must be numerical"
  validates_length_of :zipcode, :within => 5..32, :too_long => " must be less than 32 characters", :too_short => " must be at least 5 characters"
  validates_presence_of :state, :message => " must have a selection"
end

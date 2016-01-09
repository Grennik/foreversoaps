class Newsmailer < ActiveRecord::Base
  validates :email, length: {
    minimum: 8,
    maximum: 50,
    too_long: "%count characters is the maximum allowed",
    too_short: "Enter a valid email address"
  }
  validates :email, uniqueness: true
end

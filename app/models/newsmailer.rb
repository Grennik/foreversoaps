class Newsmailer < ActiveRecord::Base
  validates_presence_of :email, :message => " must not be empty"
  validates_uniqueness_of :email, :case_sensitive => false, :message => " is already taken"
  validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/, :message => " is invalid"
end

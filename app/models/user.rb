class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :shippings,  dependent: :destroy
  has_many :transactions, dependent: :destroy

  def after_create(user)
    @user = user
    Newusermailer.new_user_email(@user.email).deliver_now
  end
end

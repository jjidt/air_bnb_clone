class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :listings

  after_create :mail_user

private

  def mail_user
    UserMailer.signup_confirmation(self).deliver
  end
end

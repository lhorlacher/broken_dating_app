class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :email, :password, :password_confirmation

  has_one :profile, depdenent: :destroy

  def picks_list
  	picks = []
  	self.matches.each do |id|
  		picks << User.find(id)
  	end
  	picks
  end
end

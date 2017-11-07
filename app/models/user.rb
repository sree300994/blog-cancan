class User < ActiveRecord::Base

	has_many :permissions
	has_many :roles, through: :permissions
  has_many :articles
  has_many :comments
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    after_create :assign_default_role

    def assign_default_role
    	self.roles.push(Role.last)
    end
    def role?(role)
  	 	self.roles.pluck(:name).include? role
    end
end

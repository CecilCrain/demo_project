class User < ActiveRecord::Base
	attr_accessible :first_name, :last_name, :email_address, :comment
	validates :first_name, :last_name, :email_address, :presence => true
	validates :email_address, :uniqueness => true
end

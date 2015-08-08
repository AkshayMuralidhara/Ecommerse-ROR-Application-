class User < ActiveRecord::Base
	validates :name, :presence =>true, :length => {:minimum =>4, :maximum =>30}
	validates :email, :presence =>true ,:uniqueness =>true
	validates :password, :presence =>true
	has_one :image
	accepts_nested_attributes_for :image
end

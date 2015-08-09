class Product < ActiveRecord::Base
	has_many :images , as: :entity
end

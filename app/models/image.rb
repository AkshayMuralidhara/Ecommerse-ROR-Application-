class Image < ActiveRecord::Base
	has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
	belongs_to :entity, :polymorphic => true
	def validate_creadiantial(email,password)
		@user=User.where(:email=>email,:password=>password)
		if !@user.blank?
			@user.first
		else
			nil
		end
	end
end

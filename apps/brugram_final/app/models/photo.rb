class Photo < ActiveRecord::Base
	has_attached_file :image, :styles => { :medium => "500x500>", :thumb => "750x750>" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  	has_and_belongs_to_many :hashtags
end

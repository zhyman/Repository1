class Place < ActiveRecord::Base
	validates :name, :address, presence: true
	validates :name, length: { minimum: 4, maximum: 20 }
	has_many :comments
end

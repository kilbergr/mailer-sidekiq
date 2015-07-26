class Group < ActiveRecord::Base
	validates :name, presence:true
	has_many :lists
	has_many :associations, dependent: :destroy
	has_many :users, through: :associations

end

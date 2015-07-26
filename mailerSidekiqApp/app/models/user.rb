class User < ActiveRecord::Base
	validates :username, presence: true
	validates :email, presence: true
	validates :is_admin, :default => false

	has_many :items
	has_many :associations, dependent: :destroy
	has_many :groups, through: :associations
end

class User < ActiveRecord::Base
	validates :name, presence: true ,length: {maximum:50}, uniqueness: {case_sensitive: false}
	has_many :posts
	has_many :comments
end

class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  validates :body, presence: true ,length: {maximum:100}
  validates :user_id , presence: true
end


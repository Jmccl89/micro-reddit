class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  validates :title, presence: true, length: { maximum: 80 }
  validates :body, presence: true, length: { maximum: 500 }
end

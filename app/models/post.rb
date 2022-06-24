class Post < ApplicationRecord
  belongs_to :user
  has_many :likes
  has_many :comments

  validates :user_id, presence: true
  validates :post_content, presence: true
  validates :post_content, length: { in: 1..50 }
  validates :sign, presence: true
  validates :sign_type, presence: true
end

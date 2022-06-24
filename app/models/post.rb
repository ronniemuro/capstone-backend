class Post < ApplicationRecord
  belongs_to :user
  has_many :likes
  has_many :comments

  validates :user_id, presence: true
  validates :post_content, presence: true
  validates :sign_type, presence: true
  validates :sign, presence: true
end

class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :post_id, presence: true
  validates :user_id, presence: true
  validates :comment, presence: true
  validates :comment, length: { in: 1..25 }
end

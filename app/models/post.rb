class Post < ApplicationRecord
  validates :title,
            uniqueness: true,
            presence: true,
            length: {
              minimum: 5
            }

  validates :body,
            presence: true,
            length: {
              minimum: 5
            }

  validates :user_id,
            presence: true

  belongs_to :user
  has_many :comment
end

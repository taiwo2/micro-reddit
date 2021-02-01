class Post < ApplicationRecord
  belongs_to :authors

  validates :user_id, presence: true
  validates :title, presence: true

  validates :body, presence: true, length: { maximum: 200 }
end

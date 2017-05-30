class Micropost < ApplicationRecord
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum:255 }

  belongs_to :user

  has_many :favorites
  has_many :favorited, through: :favorites, source: :user

end

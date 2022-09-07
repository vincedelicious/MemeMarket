class Meme < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  validates :title, :category, :price, :photo, presence: true
end

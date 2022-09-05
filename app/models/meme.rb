class Meme < ApplicationRecord
  belongs_to :user
  validates :title, :category, :price, presence: true
end

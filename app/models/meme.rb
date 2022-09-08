class Meme < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
  validates :title, :category, :price, :photo, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_title_description_and_category,
    against: [:title, :description, :category],
    using: {
      tsearch: { prefix: true }
    }
end

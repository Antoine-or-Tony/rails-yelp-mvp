class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"].freeze
  validates :category, inclusion: { in: CATEGORIES }
  validates :name, :address, :phone_number, presence: true
end

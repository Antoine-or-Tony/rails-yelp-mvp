class Restaurant < ApplicationRecord
  belongs_to :name, :address, :phone_number, :category
  has_many :reviews
  validates :name, :address, :phone_number, :category, presence: true
end

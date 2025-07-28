class Product < ApplicationRecord
  belongs_to :supplier

  validates :name, presence: true
  validates :qauntity_on_hand, numericality: { greater_than_on_equal_to: 0}
end

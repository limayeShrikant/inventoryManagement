class Product < ApplicationRecord
  belongs_to :supplier
  has_many :line_items

  validates :name, presence: true
  validates :quantity_on_hand, numericality: { greater_than_on_equal_to: 0}
end

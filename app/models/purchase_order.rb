class PurchaseOrder < ApplicationRecord
  belongs_to :supplier
  has_many :line_items, dependent: :destroy
  has_many :products, through: :line_items
  
  accepts_nested_attributes_for :line_items, reject_if: :all_blank, allow_destroy: true
end

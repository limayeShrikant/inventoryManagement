class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :purchase_order
end

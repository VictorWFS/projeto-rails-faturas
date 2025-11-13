class Invoice < ApplicationRecord
  belongs_to :customer
  has_many :line_items, dependent: :destroy

  def calculated_total
    line_items.sum { |item| item.quantity * item.unit_price}
  end
  
end

class Invoice < ApplicationRecord
  belongs_to :customer
  has_many :invoices  
  has_many :line_items, dependent: :destroy
end

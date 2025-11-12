json.extract! invoice, :id, :customer_id, :due_date, :total_amount, :status, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)

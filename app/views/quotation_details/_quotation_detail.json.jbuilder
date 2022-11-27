json.extract! quotation_detail, :id, :quotation_id, :good_id, :quantity, :leadTime, :sellingUnit, :price, :discount, :created_at, :updated_at
json.url quotation_detail_url(quotation_detail, format: :json)

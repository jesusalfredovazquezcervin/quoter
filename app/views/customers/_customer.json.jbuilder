json.extract! customer, :id, :code, :email, :fullName, :phoneNumber, :address, :created_at, :updated_at
json.url customer_url(customer, format: :json)

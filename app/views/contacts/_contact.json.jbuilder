json.extract! contact, :id, :code, :fullName, :email, :phoneNumber, :created_at, :updated_at
json.url contact_url(contact, format: :json)

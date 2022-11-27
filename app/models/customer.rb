class Customer < ApplicationRecord
  has_many :contacts
  has_many :quotations
end

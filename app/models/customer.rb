class Customer < ApplicationRecord
  has_many :contacts
  has_many :quotations
  belongs_to :user
end

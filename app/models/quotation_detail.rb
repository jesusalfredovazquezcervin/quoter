class QuotationDetail < ApplicationRecord
  belongs_to :quotation
  belongs_to :good
  belongs_to :user
  def price_currency
    price = ActionController::Base.helpers.number_to_currency(self[:price])
    price = price << ' ' <<Good.find(self.good_id).currency
  end
  def leadTimeClean
    self.leadTime.gsub(';', '-')
  end
end

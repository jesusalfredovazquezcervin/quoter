class Quotation < ApplicationRecord
  belongs_to :customer
  belongs_to :consultant
  belongs_to :contact
  has_many :quotation_details, :dependent => :destroy
  validates :code,
            uniqueness:  {scope: [:code], message: ">The quotation code has been already used!"}
end

class Good < ApplicationRecord
  CATEGORY = %w[BOT KIT] #tipo o categoria del producto, so far -> BOT | KIT
  CURRENCY = %w[USD YEN PESO] #tipo o categoria del producto, so far -> BOT | KIT
  belongs_to :user
end

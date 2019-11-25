class Order < ApplicationRecord
  belongs_to :pet
  belongs_to :user
  monetize :amount_cents
end

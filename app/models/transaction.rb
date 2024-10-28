class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :exchange_rate
end

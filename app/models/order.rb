class Order < ApplicationRecord
  
  enum payment_method: { credit_card: 2, transfer: 1 }
  
end

class Customer < ApplicationRecord
  validates :full_name, presence: true
  validates :phone_number, presence: true
  validates :email, email: true, allow_nil: true # if you would want to validate the email format
end

class Customer < ApplicationRecord
  has_one_attached :image

  validates :full_name, presence: true
  validates :phone_number, presence: true
  validates :email, email: true, allow_nil: true
end

class Customer < ApplicationRecord
  validates :email, presence: true, email: true
end

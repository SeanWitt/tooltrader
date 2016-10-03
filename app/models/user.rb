class User < ApplicationRecord
  validates :name, presence: true
  validates :email, uniqueness: true
  validates :password_digest, presence: true

  has_many :tools
  has_secure_password

  #geocode
  geocoded_by :address
  after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }
end

class User < ApplicationRecord
  validates :name, presence: true
  validates :email, uniqueness: true
  validates :password_digest, presence: true

  has_many :tools
  has_many :authored_reviews, class_name: "Review", foreign_key: "author_id"
  has_many :received_reviews, class_name: "Review", foreign_key: "recipient_id"

  has_secure_password

  #geocode
  geocoded_by :address
  after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }

  def distance_from(other_user)
    Geocoder::Calculations.distance_between([self.longitude, self.latitude], [other_user.longitude, other_user.latitude])
  end

  def nearby_users(distance)
    User.near(self.address, distance) - [self]
  end
end

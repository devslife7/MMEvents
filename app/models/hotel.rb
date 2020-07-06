class Hotel < ApplicationRecord
    belongs_to :location
    has_many :hotel_users
    has_many :users, through: :hotel_users
end

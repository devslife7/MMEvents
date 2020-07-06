class User < ApplicationRecord
    has_many :event_users
    has_many :events, through: :event_users
    has_many :hotel_users
    has_many :hotels, through: :hotel_users

    def display_name
        "#{self.first_name}, #{self.last_name}"
    end

    def length_of_stay_by_hotel(hotel_id)
        self.hotel_users.each do |hotel_user|
            if hotel_user.hotel_id == hotel_id
                return hotel_user.length_of_stay
            end
        end
    end
end

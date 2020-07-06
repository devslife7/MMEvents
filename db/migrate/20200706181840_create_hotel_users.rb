class CreateHotelUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :hotel_users do |t|
      t.integer :user_id
      t.integer :hotel_id
      t.integer :length_of_stay

      t.timestamps
    end
  end
end

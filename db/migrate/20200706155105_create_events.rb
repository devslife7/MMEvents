class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.integer :location_id
      t.string :type_of_event
      t.integer :ticket_cost
      t.datetime :date

      t.timestamps
    end
  end
end

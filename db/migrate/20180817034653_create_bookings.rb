class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.string :booker_name
      t.string :booker_email
      t.datetime :event_start
      t.datetime :event_end
      t.string :title
      t.string :description
      t.boolean :accept

      t.timestamps
    end
  end
end

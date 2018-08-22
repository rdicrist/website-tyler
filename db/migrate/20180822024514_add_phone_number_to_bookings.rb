class AddPhoneNumberToBookings < ActiveRecord::Migration[5.1]
  def change
    add_column :bookings, :booker_phonenumber, :string
  end
end

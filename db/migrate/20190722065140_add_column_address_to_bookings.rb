class AddColumnAddressToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :address, :text
  end
end

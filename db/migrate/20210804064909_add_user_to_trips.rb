class AddUserToTrips < ActiveRecord::Migration[6.1]
  def change
    add_reference :trips, :user, index: true, foreign_key: true
  end
end

class CreateBids < ActiveRecord::Migration[6.1]
  def change
    create_table :bids do |t|
      t.integer :employee_id
      t.integer :shift_id
      t.string :day_of_week
    end
  end
end

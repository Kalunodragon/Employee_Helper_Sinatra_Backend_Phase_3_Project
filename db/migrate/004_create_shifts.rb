class CreateShifts < ActiveRecord::Migration[6.1]
  def change
    create_table :shifts do |t|
      t.boolean :day_off
      t.string :start_time
      t.string :off_time
    end
  end
end

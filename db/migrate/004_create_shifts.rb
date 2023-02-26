class CreateShifts < ActiveRecord::Migration[6.1]
  def change
    create_table :shifts do |t|
      t.boolean :day_off
      t.time :start_time
      t.time :off_time
    end
  end
end

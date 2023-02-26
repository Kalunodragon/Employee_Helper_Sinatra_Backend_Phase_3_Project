class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.integer :employee_number
      t.integer :bid_id
      t.integer :station_id
    end
  end
end

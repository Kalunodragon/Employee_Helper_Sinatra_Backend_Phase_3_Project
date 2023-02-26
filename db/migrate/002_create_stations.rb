class CreateStations < ActiveRecord::Migration[6.1]
  def change
    create_table :stations do |t|
      t.string :name
      t.string :state
      t.string :city_code
    end
  end
end

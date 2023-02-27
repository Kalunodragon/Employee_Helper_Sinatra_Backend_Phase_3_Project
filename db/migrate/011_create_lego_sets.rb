class CreateLegoSets < ActiveRecord::Migration[6.1]
  def change
    create_table :lego_sets do |t|
      t.string :name
      t.integer :set_number
      t.integer :peices
      t.integer :theme_id
      t.integer :age
    end
  end
end

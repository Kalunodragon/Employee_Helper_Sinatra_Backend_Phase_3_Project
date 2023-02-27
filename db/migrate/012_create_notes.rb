class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.integer :lego_set_id
      t.integer :owner_id
      t.string :body
    end
  end
end

class CreateEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :entries do |t|
      t.string :title
      t.string :description
      t.integer :entry_type_id
      t.integer :user_id
      t.datetime :date

      t.timestamps
    end

    add_index :entries, :entry_type_id
    add_index :entries, :user_id
  end
end

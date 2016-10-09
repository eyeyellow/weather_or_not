class CreateEntryTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :entry_types do |t|
      t.string :name
      t.integer :reminder_freq

      t.timestamps
    end
  end
end

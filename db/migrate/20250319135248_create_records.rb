class CreateRecords < ActiveRecord::Migration[7.1]
  def change
    create_table :records do |t|
      t.datetime :recorded_at, null: false
      t.references :category, null: false, foreign_key: true
      t.timestamps
    end
  end
end

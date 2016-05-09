class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :date
      t.string :start_time
      t.string :end_time
      t.references :track

      t.timestamps null: false
    end
  end
end

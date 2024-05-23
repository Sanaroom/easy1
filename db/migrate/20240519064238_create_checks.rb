class CreateChecks < ActiveRecord::Migration[7.0]
  def change
    create_table :checks do |t|
      t.integer :number_id,           null: false
      t.integer :attendance_id,           null: false
      t.timestamps
    end
  end
end

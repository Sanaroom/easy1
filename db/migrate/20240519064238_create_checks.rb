class CreateChecks < ActiveRecord::Migration[7.0]
  def change
    create_table :checks do |t|
      t.string :number,           null: false, default: ""
      t.string :attendance,           null: false, default: ""
      t.timestamps
    end
  end
end

class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :board, null: false, default: ""
      t.timestamps
    end
  end
end

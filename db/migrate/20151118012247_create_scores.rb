class CreateScores < ActiveRecord::Migration[4.2]
  def change
    create_table :scores do |t|
      t.integer :score
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :scores, :users
  end
end

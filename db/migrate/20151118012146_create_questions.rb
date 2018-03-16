class CreateQuestions < ActiveRecord::Migration[4.2]
  def change
    create_table :questions do |t|
      t.text :title

      t.timestamps null: false
    end
    add_index :questions, :title
  end
end

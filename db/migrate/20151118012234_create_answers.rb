class CreateAnswers < ActiveRecord::Migration[4.2]
  def change
    create_table :answers do |t|
      t.text :title
      t.text :description
      t.boolean :good
      t.integer :point
      t.references :question, index: true

      t.timestamps null: false
    end
    add_index :answers, :title
    add_foreign_key :answers, :questions
  end
end

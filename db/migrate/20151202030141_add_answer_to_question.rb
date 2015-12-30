class AddAnswerToQuestion < ActiveRecord::Migration
  def change
    add_reference :questions, :answers, index: true
    add_foreign_key :questions, :answers
  end
end

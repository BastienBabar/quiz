class Question < ActiveRecord::Base
  has_many :answers

  def find_10_random
    Question.limit(10).order("RANDOM()")
  end
end

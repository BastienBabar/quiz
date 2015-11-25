class Question < ActiveRecord::Base

  def find_10_random
    Question.limit(10).order("RANDOM()")
  end
end

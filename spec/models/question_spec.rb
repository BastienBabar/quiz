require 'rails_helper'

RSpec.describe Question, type: :model do
  context 'runs the quiz' do
    questions = Question.new.find_10_random
    it 'gets 10 random questions' do
      expect(questions.count).to eq(10)
    end
  end
end

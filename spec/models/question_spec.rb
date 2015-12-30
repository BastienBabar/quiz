require 'rails_helper'

RSpec.describe Question, type: :model do
  context 'runs the quiz' do
    answers = FactoryGirl.create_list(:answer, 2)
    FactoryGirl.create_list(:question, 20, answers: answers)

    it 'gets 10 random questions' do
      questions = Question.new.find_10_random
      expect(questions.count).to eq(10)
      expect(questions[0].answers.count).to eq(2)
    end
  end
end

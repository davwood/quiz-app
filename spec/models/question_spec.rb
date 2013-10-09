require 'spec_helper'

describe Question do
 it {should belong_to(:quiz)}
 it {should have_many(:answers)}

 it 'has a correct answer' do
 	question = Question.create(text: 'Capital of France?')
 	london = Answer.create(text: 'London', correctness: false)
 	paris = Answer.create(text: 'Paris', correctness: true)

 	question.answers << london
 	question.answers << paris

 	expect(question.correct_answer).to eq paris
 end
end

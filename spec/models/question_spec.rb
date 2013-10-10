require 'spec_helper'

describe Question do
  it { should belong_to(:quiz) }
  it { should have_many(:answers) }

  it 'can be true' do
    question = Question.create(text: 'Is Paris the capital of France?', truth: true)
    
    expect(question.truth).to be_true
  end

  it 'can be false' do
    question = Question.create(text: 'Is London the capital of France?', truth: false)

    expect(question.truth).to be_false
  end

  it 'knows if an answer is correct' do
    question = Question.create(text: 'Is Paris the capital of France?', truth: true)

    expect(question.correct_answer?(true)).to be_true
  end

  it 'knows if an answer is incorrect' do
    question = Question.create(text: 'Is Paris the capital of France?', truth: true)

    expect(question.correct_answer?(false)).to be_false
  end

end

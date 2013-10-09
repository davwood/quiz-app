require 'spec_helper'

def create_quiz(some_title)
  quiz = Quiz.create({ :title => some_title })
end

describe 'the quizzes section' do
  
  before(:all) do
    create_quiz 'Some quiz'
    create_question 'Some question'
  end

  describe '/quizzes' do
    it 'should display quizzes' do
      visit quizzes_path

      expect(page).to have_content 'Some quiz'
    end
  end

  describe 'an individual quiz' do
    it 'has its own page' do
      visit quizzes_path
      click_link 'Some quiz'

      expect(page).to have_css 'h1', text: 'Some quiz'
    end

    # it 'has a list of questions' do
    #   visit quizzes_path
    #   click_link 'Some quiz'

    #   expect(page).to have_css 'ul li', text: 'Some question'
    # end
  end

  describe 'new quiz form' do
    it 'creates a new quiz' do
      visit new_quiz_path

      within '.new_quiz' do
        fill_in 'Title', with: 'Brand new quiz'
        click_button "Create Quiz"
      end

      expect(current_url).to eq url_for(Quiz.last)
      expect(page).to have_content 'Brand new quiz'
    end
  end


end
class QuizzesController < ApplicationController
  def index
    @quizzes = Quiz.all
  end

  def show
    @quiz = Quiz.find(params[:id])
  end

  def edit
    @quiz = Quiz.find(params[:id])
  end

  def update
    if @quiz.update(params[:quiz].permit(:title))
      redirect_to @quiz
    else
      render 'edit'
    end 
  end

  def new
    @quiz = Quiz.new
    4.times { @quiz.questions.build }
  end

  def create
    @quiz = Quiz.new(params[:quiz].permit(:title, questions_attributes: [:text]))

    if @quiz.save
      redirect_to @quiz
    else
      render 'new'
    end
  end
end

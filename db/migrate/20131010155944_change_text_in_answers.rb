class ChangeTextInAnswers < ActiveRecord::Migration
  def change
  	remove_column :answers, :text, :text
  	add_column :answers, :response, :boolean
  end
end

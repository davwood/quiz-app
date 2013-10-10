class AddTruthToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :truth, :boolean
  end
end

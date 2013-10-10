class RemoveCorrectnessFromAnswers < ActiveRecord::Migration
  def change
    remove_column :answers, :correctness, :boolean
  end
end

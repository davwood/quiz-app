class Question < ActiveRecord::Base
	belongs_to :quiz
	has_many :answers

	def correct_answer?(response)
		self.truth == response
	end
end

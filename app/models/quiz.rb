class Quiz < ActiveRecord::Base
	has_many :questions

	#This method allows you to modify instances of questions 
	#using the same mass-assignment facility on Quiz 
	#that makes simple forms so trivial
	accepts_nested_attributes_for :questions

	validates :title, presence: true, uniqueness: true
end

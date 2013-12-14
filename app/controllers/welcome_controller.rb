class WelcomeController < ApplicationController

	def show
		@question = Question.new
	end

end

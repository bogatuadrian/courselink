class WelcomeController < ApplicationController

	def show
		@question = Question.new
    @questions = Question.all

    universities = University.all

    @array = []

    universities.each do |uni|
      uni.courses.each do |course|
        @array << ["#{uni.alias}/#{course.alias}", course.id]
      end
    end

	end

end

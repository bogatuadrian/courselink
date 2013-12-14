class WelcomeController < ApplicationController

	def show
		@question = Question.new

    universities = University.all

    res = []

    universities.each do |uni|
      ary = []
      uni.courses.each do |course|
        ary << "#{uni.alias}/#{course.alias}"
      end

      res << ary
    end

    @array = res
	end

end

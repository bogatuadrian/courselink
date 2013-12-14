class WelcomeController < ApplicationController

	def show
    @questions = Question.all
    @sections = sections
	end

  private

    def sections
      universities = University.all
      array = Array.new

      universities.each do |uni|
        uni.courses.each do |course|
          array << ["#{uni.alias}/#{course.alias}", course.id]
        end
      end

      array
    end



end

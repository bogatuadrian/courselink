
namespace :db do
  task :populate => :environment do
    University.delete_all

    uni_params = {
      name: "University Politehnica of Bucharest",
      alias: "UPB"
    }

    uni = University.new(uni_params)
    uni.save

    4.times do |i|
      course_params = {
        year: i,
        name: "Materia #{i}",
        alias: "M#{i}"
      }

      course = Course.new(course_params)
      course.university_id = uni.id

      course.save
    end

    uni_params = {
      name: "Academy of Economical Studies",
      alias: "ASE"
    }

    uni = University.new(uni_params)
    uni.save

    4.times do |i|
      course_params = {
        year: i,
        name: "Materia #{i}",
        alias: "M#{i}"
      }

      course = Course.new(course_params)
      course.university_id = uni.id

      course.save
    end
  end
end

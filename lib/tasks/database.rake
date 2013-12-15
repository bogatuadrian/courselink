
namespace :db do
  task :populate => :environment do
    University.delete_all

    uni_params = {
      name: "University Politehnica of Bucharest",
      alias: "UPB"
    }

    uni = University.new(uni_params)
    uni.save

    courses = [
      { name: "Algoritmi Paraleli si Distribuiti",
        alias: "APD",
        year: 3
      },
      { name: "Proiectarea Algoritmilor",
        alias: "PA",
        year: 2
      },
      { name: "Bazele Electrotehnicii",
        alias: "ELTH",
        year: 1
      }
    ]

    courses.each do |course|
      c = Course.new(course)
      c.university_id = uni.id
      c.save
    end

    uni_params = {
      name: "Academy of Economical Studies",
      alias: "ASE"
    }

    uni = University.new(uni_params)
    uni.save

    courses = [
      { name: "Limbaje de Asamblare",
        alias: "LA",
        year: 1
      },
      { name: "Microeconomie",
        alias: "MicroEcon",
        year: 2
      },
      { name: "Structuri de date",
        alias: "SDD",
        year: 3
      }
    ]

    courses.each do |course|
      c = Course.new(course)
      c.university_id = uni.id
      c.save
    end
  end
end

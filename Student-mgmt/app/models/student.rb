class Student < ApplicationRecord
    has_many :blogs
    has_and_belongs_to_many :courses
    has_many :student_projects
    has_many :projects, through: :student_projects
    validates :first_name, :last_name, :email, presence: true
    after_create :display_student_age
    def display_student_age
        if self.date_of_birth.present?
            age = ((Time.zone.now - self.date_of_birth.to_time) / 1.year.seconds).floor
            puts "The age of the student is #{age} years."
        else
            puts "Date of birth is not provided."
        end
    end
end
                        
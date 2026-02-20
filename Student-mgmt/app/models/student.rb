class Student < ApplicationRecord
  has_many :blogs
  has_and_belongs_to_many :courses
  has_many :student_projects
  has_many :projects, through: :student_projects

  validates :first_name, :last_name, :email, presence: true
  validates :email, uniqueness: true
  validates :first_name, :last_name, length: { minimum: 2, maximum: 50 }
  validates :first_name, :last_name,
            format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }

  validate :validate_student_age
  after_create :display_student_age

  def display_student_age
    if date_of_birth.present?
      age = ((Time.zone.now - date_of_birth.to_time) / 1.year.seconds).floor
      puts "The age of the student is #{age} years."
    else
      puts "Date of birth is not provided."
    end
  end

  def validate_student_age
    return unless date_of_birth.present?

    age = Date.today.year - date_of_birth.year

    if age < 15 || age > 100
      errors.add(:date_of_birth, "Age must be between 15 and 100 years.")
    end
  end
end

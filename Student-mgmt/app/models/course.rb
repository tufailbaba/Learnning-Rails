class Course < ApplicationRecord
    validates :name,:description, presence: true
    has_and_belongs_to_many :students
    validates :name, uniqueness: true
    validates : description, length: { minimum: 10 ,maximum: 500 }

end

class Student < ApplicationRecord

  # -------------------------
  # Associations (if any)
  # -------------------------

  # -------------------------
  # Validations
  # -------------------------

  # Name validation (letters and spaces only)
  validates :first_name, :last_name,
            presence: true,
            format: { with: /\A[a-zA-Z\s]+\z/,
                      message: "only allows letters" }

  # Email validation
  validates :email,
            presence: true,
            uniqueness: true,
            format: { with: URI::MailTo::EMAIL_REGEXP }

  # Age validation
  validate :validate_student_age

  def full_name
    "#{first_name} #{last_name}"
  end
  def age
    return unless date_of_birth.present?  
    ((Date.today - date_of_birth).to_i / 365.25).floor
  end
  def name_with_email
    "#{full_name}/(#{email})"
  end
  private

  def validate_student_age
    return unless date_of_birth.present?

    age = ((Date.today - date_of_birth).to_i / 365.25).floor

    if age < 15 || age > 100
      errors.add(:date_of_birth, "Age must be between 15 and 100 years.")
    end
  end

end

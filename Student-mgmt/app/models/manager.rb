class Manager < ApplicationRecord
  belongs_to :departmnet
  has_one :manager_history
end

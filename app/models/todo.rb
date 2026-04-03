class Todo < ApplicationRecord
  belongs_to :project, optional: true

  validates :name, presence: true
  validates :priority, numericality: { only_integer: true, greater_than: 0 }
end

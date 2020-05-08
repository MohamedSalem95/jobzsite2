class Task < ApplicationRecord
  belongs_to :user
  has_many :task_images

  scope :latest, -> { order(created_at: :desc) }
end

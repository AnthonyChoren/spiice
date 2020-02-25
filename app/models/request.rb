class Request < ApplicationRecord
  belongs_to :project
  belongs_to :user

  validates :accepted, presence: true
  validates :created_at, presence: true
  validates :message, presence: true, length: { in: 100..300 }
  validates :status, presence: true
end

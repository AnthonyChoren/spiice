class Project < ApplicationRecord
  belongs_to :user
  has_many :requests, dependent: :destroy

  validates :title, presence: true
  validates :description, presence: true
  # validates :start, presence: true, numericality: true
  # validates :deadline, presence: true, numericality: true, date: { after: :start, message: 'must be after your start date' }
  validates :price, presence: true
end

class Request < ApplicationRecord
  belongs_to :project
  belongs_to :user

  validates :message, presence: true
  validates :project_id, uniqueness: { scope: :user_id, message: "You've already made a request for this project!" }

  enum status: { pending: 0, accepted: 1, refused: 2 }
end

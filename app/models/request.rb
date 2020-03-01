class Request < ApplicationRecord
  belongs_to :project
  belongs_to :user

  validates :message, presence: true

  enum status: { pending: 0, accepted: 1 }
end

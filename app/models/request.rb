class Request < ApplicationRecord
  belongs_to :project
  belongs_to :user

  # validates :message, presence: true, length: { in: 100..300 }
end

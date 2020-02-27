class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :projects, dependent: :destroy
  has_many :requests, dependent: :destroy
  has_many :propositions, through: :projects, source: :requests

  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # # validates :bio, presence: true, length: { maximum: 500 }
  # validates :email, presence: true, format: { with: /\A.*@.*\.com\z/ }
  # validates :phone_number, presence: true, length: { in: 8..12 }
  # # validates :company, presence: true
  # validates :city, presence: true
  # # validates :country_code, presence: true
   validates :role, presence: true

  enum role: { client: 0, designer: 1 }

  has_one_attached :photo
end

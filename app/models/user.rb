class User < ApplicationRecord
  after_create :create_default_user_setting
  has_secure_password

  has_many :tasks, dependent: :destroy
  has_one :user_setting, dependent: :destroy

  validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i, message: "Must be a valid email adress" }

  private

  def create_default_user_setting
    create_user_setting(notification: "email", color: "blue", theme: "dark")
  end
end

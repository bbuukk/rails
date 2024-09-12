# frozen_string_literal: true

class UserSetting < ApplicationRecord
  belongs_to :user

  after_initialize :set_defaults, if: :new_record?

  private

  def set_defaults
    self.notification ||= 'email'
    self.color ||= 'blue'
    self.theme ||= 'dark'
  end
end

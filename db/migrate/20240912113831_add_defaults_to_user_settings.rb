class AddDefaultsToUserSettings < ActiveRecord::Migration[7.2]
  def change
    change_column_default :user_settings, :notification, 'email'
    change_column_default :user_settings, :color, 'blue'
    change_column_default :user_settings, :theme, 'light'
  end
end

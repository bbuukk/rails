class CreateUserSettings < ActiveRecord::Migration[7.2]
  def change
    create_table :user_settings do |t|
      t.references :user, null: false, foreign_key: true
      t.string :notification
      t.string :color
      t.string :theme

      t.timestamps
    end
  end
end

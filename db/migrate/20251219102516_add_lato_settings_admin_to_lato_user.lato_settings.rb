# This migration comes from lato_settings (originally 20250328072343)
class AddLatoSettingsAdminToLatoUser < ActiveRecord::Migration[7.1]
  def change
    add_column :lato_users, :lato_settings_admin, :boolean, default: false
  end
end

class AddTablePreferencesToClients < ActiveRecord::Migration[7.1]
  def change
    add_column :clients, :table_preferences, :string
  end
end

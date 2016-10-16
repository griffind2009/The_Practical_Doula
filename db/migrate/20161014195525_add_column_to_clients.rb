class AddColumnToClients < ActiveRecord::Migration[5.0]
  def change
    add_column :clients, :chart_type, :string
  end
end

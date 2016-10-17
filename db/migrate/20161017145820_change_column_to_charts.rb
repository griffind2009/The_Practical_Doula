class ChangeColumnToCharts < ActiveRecord::Migration[5.0]
  def change
    change_column :charts, :EDD, :integer
  end
end

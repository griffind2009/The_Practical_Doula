class DropTableToCharts < ActiveRecord::Migration[5.0]
  def up
    drop_table :charts
  end
end

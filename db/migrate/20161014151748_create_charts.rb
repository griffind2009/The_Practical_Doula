class CreateCharts < ActiveRecord::Migration[5.0]
  def change
    create_table :charts do |t|
      t.string :chart_type
      t.references :client, foreign_key: true
    end
  end
end

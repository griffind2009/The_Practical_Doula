class AddColumnToCharts < ActiveRecord::Migration[5.0]
  def change
    add_column :charts, :name, :text
    add_column :charts, :address, :text
    add_column :charts, :age, :text
    add_column :charts, :EDD, :text
    add_column :charts, :phsician, :text
    add_column :charts, :nutrition, :text
    add_column :charts, :bp, :text
    add_column :charts, :medications, :text
    add_column :charts, :intervention, :text
    add_column :charts, :contraction, :text
    add_column :charts, :effacement, :text
    add_column :charts, :dilation, :text
    add_column :charts, :support, :text
    add_column :charts, :questions, :text
    add_column :charts, :comments, :text

  end
end

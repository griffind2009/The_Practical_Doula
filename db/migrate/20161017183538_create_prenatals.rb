class CreatePrenatals < ActiveRecord::Migration[5.0]
  def change
    create_table :prenatals do |t|
      t.integer :EDD
      t.integer :BP
      t.text :physician
      t.references :clients
    end
  end
end

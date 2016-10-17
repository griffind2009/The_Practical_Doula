class CreateBasics < ActiveRecord::Migration[5.0]
  def change
    create_table :basics do |t|
      t.text :name
      t.text :address
      t.integer :age
      t.references :clients
    end
  end
end

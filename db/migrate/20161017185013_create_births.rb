class CreateBirths < ActiveRecord::Migration[5.0]
  def change
    create_table :births do |t|
      t.text :medication
      t.text :intervention
      t.integer :dilation
      t.integer :effacement
      t.references :clients
    end
  end
end

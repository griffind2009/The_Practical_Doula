class ChangeColumnInPrenatals < ActiveRecord::Migration[5.0]
  def self.up
     change_table :prenatals do |t|
       t.change :BP, :float
     end
     end
end

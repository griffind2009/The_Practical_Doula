class UpdateColumnInPrenatals < ActiveRecord::Migration[5.0]
  def self.up
     change_table :prenatals do |t|
       t.change :BP, :string
     end
     end
end

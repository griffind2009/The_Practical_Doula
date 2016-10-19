class ChangeDataInPrenatals < ActiveRecord::Migration[5.0]
  def self.up
     change_table :prenatals do |t|
       t.change :EDD, :string
     end
     end
end

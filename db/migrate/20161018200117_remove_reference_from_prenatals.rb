class RemoveReferenceFromPrenatals < ActiveRecord::Migration[5.0]
  def change
    remove_reference(:prenatals, :clients, index: true)
    add_reference :prenatals, :client
  end
end

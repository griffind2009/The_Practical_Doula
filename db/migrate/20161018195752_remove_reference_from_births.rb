class RemoveReferenceFromBirths < ActiveRecord::Migration[5.0]
  def change
    remove_reference(:births, :clients, index: true)
    add_reference :births, :client
  end
end

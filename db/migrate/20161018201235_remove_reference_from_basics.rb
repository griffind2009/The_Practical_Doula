class RemoveReferenceFromBasics < ActiveRecord::Migration[5.0]
  def change
    remove_reference(:basics, :clients, index: true)
    add_reference :basics, :client
  end
end

class RemoveReferenceFromPostpartums < ActiveRecord::Migration[5.0]
  def change
    remove_reference(:postpartums, :clients, index: true)
    add_reference :postpartums, :client
  end
end

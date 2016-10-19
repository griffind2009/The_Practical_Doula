class RemoveReferenceFromPostparta < ActiveRecord::Migration[5.0]
  def change
    remove_reference(:postparta, :clients, index: true)
    add_reference :postparta, :client
  end
end

class AddReferenceToClients < ActiveRecord::Migration[5.0]
  def change
    add_reference :basics, :client
  end
end

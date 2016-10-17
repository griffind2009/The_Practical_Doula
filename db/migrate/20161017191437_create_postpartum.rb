class CreatePostpartum < ActiveRecord::Migration[5.0]
  def change
    create_table :postparta do |t|
      t.text :support
      t.text :recovery
      t.text :questions
      t.references :clients
    end
  end
end

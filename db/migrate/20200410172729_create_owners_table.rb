class CreateOwnersTable < ActiveRecord::Migration[6.0]
  def change
    create_table :owners do |t|
      t.string :name
    end
  end
end

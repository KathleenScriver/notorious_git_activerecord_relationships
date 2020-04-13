class CreateCatsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :cats do |t|
      t.string :name
      t.string :breed
      t.integer :age
    end
  end
end

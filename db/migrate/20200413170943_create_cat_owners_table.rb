class CreateCatOwnersTable < ActiveRecord::Migration[6.0]
  def change
    create_table :cat_owners do |t|
      t.references :cat, foreign_key: true
      t.references :owner, foreign_key: true
    end
  end
end

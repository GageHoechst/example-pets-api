class CreatePets < ActiveRecord::Migration[7.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :image
      t.integer :price

      t.timestamps
    end
  end
end

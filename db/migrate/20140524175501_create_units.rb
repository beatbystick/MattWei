class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :unit
      t.integer :bedrooms
      t.integer :bathrooms
      t.integer :rent
      t.integer :sqft
      t.references :property, index: true

      t.timestamps
    end
  end
end

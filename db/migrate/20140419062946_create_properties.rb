class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :address
      t.integer :rent
      t.string :description

      t.timestamps
    end
  end
end

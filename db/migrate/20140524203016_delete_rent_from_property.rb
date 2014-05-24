class DeleteRentFromProperty < ActiveRecord::Migration
  def change
    remove_column :properties, :rent
  end
end

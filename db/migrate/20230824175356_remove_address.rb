class RemoveAddress < ActiveRecord::Migration[7.0]
  def change
    remove_column :students, :address
  end
end

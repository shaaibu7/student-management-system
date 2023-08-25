class ChangeTypeOfDescriptionInDemos < ActiveRecord::Migration[7.0]
  def change
    reversible do |dir|
      dir.up do
        change_column :demos, :description, :text
      end

      dir.down do
        change_column :demos, :description, :string
      end
    end
    end
end
 
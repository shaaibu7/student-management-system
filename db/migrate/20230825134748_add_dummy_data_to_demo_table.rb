class AddDummyDataToDemoTable < ActiveRecord::Migration[7.0]
  def change
    reversible do |dir|
      dir.up do
        10.times do |i|
          puts "Creating Demo Record #{i}"
          Demo.create(
            name: "Demo #{i}",
            description: "Description number #{i}"
          )
        end
      end

      dir.down do
        10.times do |i|
          puts "Deleting Demo  #{i}"
          Demo.find_by(name: "Demo #{i}").destroy
        end
      end

    end
  end
end

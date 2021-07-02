class CreateRegions < ActiveRecord::Migration[5.2]
  def change
    create_table :regions do |t|
      t.string :name
      t.text :description
      t.string :long_name

      t.timestamps
    end
  end
end

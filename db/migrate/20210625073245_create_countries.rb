class CreateCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :countries do |t|
      t.string :name
      t.text :description
      t.string :code

      t.timestamps
    end
  end
end

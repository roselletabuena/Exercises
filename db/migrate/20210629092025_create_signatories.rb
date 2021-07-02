class CreateSignatories < ActiveRecord::Migration[5.2]
  def change
    create_table :signatories do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.string :position
      t.string :department

      t.timestamps
    end
  end
end

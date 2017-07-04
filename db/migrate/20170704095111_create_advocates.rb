class CreateAdvocates < ActiveRecord::Migration[5.0]
  def change
    create_table :advocates do |t|
      t.string :name
      t.integer :age
      t.string :phone_number

      t.timestamps
    end
  end
end

class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.integer :age
      t.integer :height_in_inches
      t.string :gender, null: false
      t.text :description
      t.string :hobbies
      t.string :books
      t.string :shows
      t.string :fitness_level
      t.string :occupation
      t.belongs_to :user

      t.timestamps
    end
  end
end

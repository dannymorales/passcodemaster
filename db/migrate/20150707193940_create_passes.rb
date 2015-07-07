class CreatePasses < ActiveRecord::Migration
  def change
    create_table :passes do |t|
      t.string :name
      t.string :username
      t.string :password_salt
      t.text :notes
      t.boolean :active
      t.integer :user_id

      t.timestamps null: false
    end
  end
end

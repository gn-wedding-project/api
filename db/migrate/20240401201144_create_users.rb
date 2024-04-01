class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :tel
      t.string :rg
      t.boolean :is_special
      t.boolean :is_invited
      t.boolean :is_confirmed
      t.string :password

      t.timestamps
    end
    add_index :users, :tel, unique: true
    add_index :users, :rg, unique: true
  end
end

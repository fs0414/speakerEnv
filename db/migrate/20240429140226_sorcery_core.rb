class SorceryCore < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :username, null: false, index: { unique: true }
      t.string :email, null: false, index: { unique: true }
      t.string :crypted_password
      t.string :salt
      t.integer :role, null: false, default: 0

      t.timestamps null: false
    end
  end
end

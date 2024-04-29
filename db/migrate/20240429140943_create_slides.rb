class CreateSlides < ActiveRecord::Migration[7.1]
  def change
    create_table :slides do |t|
      t.string :title, null: false
      t.string :file, null: false
      t.integer :status, null: false, default: 0
      t.integer :view_count, null: false, default: 0
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

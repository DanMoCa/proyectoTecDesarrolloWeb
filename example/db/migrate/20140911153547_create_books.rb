class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :ISBN
      t.string :editorial
      t.date :release_date
      t.timestamps
    end
  end
end
class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.text :Nombre
      t.integer :Precio
      t.text :Descripcion

      t.timestamps
    end
  end
end

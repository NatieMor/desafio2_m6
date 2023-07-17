class CreatePublicaciones < ActiveRecord::Migration[7.0]
  def change
    create_table :publicaciones do |t|
      t.string :titulo
      t.string :descripcion

      t.timestamps
    end
  end
end

class AddPublicacionesToUsuarios < ActiveRecord::Migration[7.0]
  def change
    add_reference :usuarios, :publicacione, null: false, foreign_key: true
  end
end

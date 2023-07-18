class CreateNews < ActiveRecord::Migration[7.0]
  def change
    create_table :news do |t|
      t.string :title
      t.string :body
      t.string :user

      t.timestamps
    end
  end
end

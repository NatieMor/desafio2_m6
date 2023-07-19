class AddCommentToNews < ActiveRecord::Migration[7.0]
  def change
    add_reference :news, :comment, null: false, foreign_key: true
  end
end

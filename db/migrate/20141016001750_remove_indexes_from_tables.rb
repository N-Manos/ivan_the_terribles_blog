class RemoveIndexesFromTables < ActiveRecord::Migration
  def up
    add_index(:replies, :comment_id)
    add_index(:comments, :post_id)
  end

  def down
    remove_index(:replies, column: :body)
    remove_index(:posts, column: :title)
    remove_index(:posts, column: :body)
    remove_index(:comments, column: :body)
  end
end

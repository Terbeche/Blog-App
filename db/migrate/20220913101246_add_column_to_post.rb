class AddColumnToPost < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :AuthorId, :integer
    add_column :posts, :Title, :string
    add_column :posts, :Text, :text
    add_column :posts, :CreatedAt, :timestamp
    add_column :posts, :UpdatedAt, :timestamp
    add_column :posts, :CommentsCounter, :integer
    add_column :posts, :LikesCounter, :integer
  end
end

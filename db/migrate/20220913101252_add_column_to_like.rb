class AddColumnToLike < ActiveRecord::Migration[7.0]
  def change
    add_column :likes, :AuthorId, :integer
    add_column :likes, :PostId, :integer
    add_column :likes, :CreatedAt, :timestamp
    add_column :likes, :UpdatedAt, :timestamp
  end
end

class AddColumnToComment < ActiveRecord::Migration[7.0]
  def change
    add_column :comments, :AuthorId, :integer
    add_column :comments, :PostId, :integer
    add_column :comments, :Text, :text
    add_column :comments, :UpdatedAt, :timestamp
    add_column :comments, :CreatedAt, :timestamp
  end
end

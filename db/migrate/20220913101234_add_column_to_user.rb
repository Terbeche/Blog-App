class AddColumnToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :Name, :string
    add_column :users, :Photo, :string
    add_column :users, :Bio, :text
    add_column :users, :UpdatedAt, :timestamp
    add_column :users, :CreatedAt, :timestamp
    add_column :users, :PostsCounter, :integer
  end
end

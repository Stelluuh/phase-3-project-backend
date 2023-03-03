class AddReaderToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :reader, :string
  end
end

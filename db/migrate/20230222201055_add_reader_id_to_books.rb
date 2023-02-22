class AddReaderIdToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :reader_id, :integer
  end
end

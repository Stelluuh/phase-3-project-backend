class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :genre
      t.integer :bookshelf_id
      t.string :read
      t.string :reader
    end
  end
end

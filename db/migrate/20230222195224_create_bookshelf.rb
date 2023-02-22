class CreateBookshelf < ActiveRecord::Migration[6.1]
  def change
    create_table :bookshelfs do |t|
      t.string :genre
      t.string :location
    end
  end
end

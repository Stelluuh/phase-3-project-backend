class CreateBookshelves < ActiveRecord::Migration[6.1]
  def change
    create_table :bookshelves do |t|
      t.string :location
    end
  end
end

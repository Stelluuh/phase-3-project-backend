class CreateReaders < ActiveRecord::Migration[6.1]
  def change
    create_table :readers do |t|
      t.string :Name
    end
  end
end

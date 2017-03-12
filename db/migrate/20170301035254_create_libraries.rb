class CreateLibraries < ActiveRecord::Migration
  def change
    create_table :libraries do |t|
      t.string :name
      t.integer :floor_count
      t.integer :book_count

      t.timestamps null: false
    end
  end
end

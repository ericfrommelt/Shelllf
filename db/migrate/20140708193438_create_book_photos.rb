class CreateBookPhotos < ActiveRecord::Migration
  def change
    create_table :book_photos do |t|
      t.belongs_to :book
      t.timestamps
    end
  end
end

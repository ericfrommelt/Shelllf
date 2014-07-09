class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :img_url
      t.belongs_to :book
      t.timestamps
    end
  end
end

class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :author
      t.string :publisher
      t.integer :year_published
      t.text :notes
      t.belongs_to :user
      t.timestamps
    end
  end
end

class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.integer :user_id
      t.string :title
      t.string :author
      t.string :publisher
      t.integer :year_published
      t.text :notes
      t.string :gbook_id_number
      t.timestamps
    end
  end
end

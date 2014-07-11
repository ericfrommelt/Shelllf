class AddGbookIdToBooks < ActiveRecord::Migration
  def change
    add_column :books, :gbook_id_number, :string
  end
end

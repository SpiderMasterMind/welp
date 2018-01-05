class CorrectTableNames < ActiveRecord::Migration[5.1]
  def change
		rename_table :businesses_tables, :businesses
		rename_table :users_tables, :users
		rename_table :reviews_tables, :reviews
  end
end

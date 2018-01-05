class AddForeignKeys < ActiveRecord::Migration[5.1]
  def change
		add_reference :reviews, :business, foreign_key: true, index: false
		add_reference :reviews, :user, foreign_key: true, index: false
  end
end

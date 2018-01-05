class CreateReviewsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews_tables do |t|
			t.string :body
			t.integer :rating
			t.timestamps
    end
  end
end

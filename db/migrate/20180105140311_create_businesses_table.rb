class CreateBusinessesTable < ActiveRecord::Migration[5.1]
  def change
    create_table :businesses_tables do |t|
			t.string :title
			t.string :address
			t.string :city
			t.string :postcode
			t.timestamps null: false
    end
  end
end

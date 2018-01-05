class CreateUsersTable < ActiveRecord::Migration[5.1]
  def change
    create_table :users_tables do |t|
			t.string :email
			t.string :password_digest
			t.string :full_name
			t.timestamps null: false
    end
  end
end

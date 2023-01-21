class CreateAdminUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :admin_users do |t|
      # t.integer :id
      t.string :email, null: false
      t.string :encrypted_password, null: false
      t.timestamps
    end
  end
end

class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :id
      t.integer :
      t.timestamps
    end
  end
end

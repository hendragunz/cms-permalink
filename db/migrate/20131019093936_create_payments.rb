class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :line_item_id
      t.integer :service_id
      t.integer :quantity
      t.decimal :item_price, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end

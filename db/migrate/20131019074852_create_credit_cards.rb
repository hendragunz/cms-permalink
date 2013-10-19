class CreateCreditCards < ActiveRecord::Migration
  def change
    create_table :credit_cards do |t|
      t.string :name
      t.date :expiry_date
      t.string :number

      t.timestamps
    end
  end
end

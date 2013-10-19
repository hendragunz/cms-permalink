class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.string      :name
      t.text        :description
      t.decimal     :price, :precision => 8, :scale => 2
      t.timestamps
    end
  end
end

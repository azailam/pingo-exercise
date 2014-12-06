class CreateShoes < ActiveRecord::Migration
  def change
    create_table :shoes do |t|
      t.float :price
      t.string :color
      t.integer :size
      t.integer :category_id
      t.integer :company_id
      t.attachment :cover
      t.integer :count_view, default: 0

      t.timestamps
    end
  end
end

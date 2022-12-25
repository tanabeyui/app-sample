class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :end_user_id,              null: false, default: ""
      t.text :body,                        null: false, default: ""
      t.string :item_code,                 null: false, default: ""
      t.string :item_name,                 null: false, default: ""
      t.string :item_shop,                 null: false, default: ""
      t.string :item_price,                null: false, default: ""
      t.string :item_image,                null: false, default: ""
      t.timestamps
    end
  end
end

class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string    :comment, :null => false
      t.integer   :rate
      t.integer   :product_id
      t.integer   :user_id
      t.timestamps null: true
    end
  end
end

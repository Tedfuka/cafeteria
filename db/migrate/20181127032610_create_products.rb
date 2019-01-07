class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string    :name, :null => false
      t.text      :recommendation
      t.integer   :price
      t.integer   :user_id
      t.timestamps null: true
    end
  end
end

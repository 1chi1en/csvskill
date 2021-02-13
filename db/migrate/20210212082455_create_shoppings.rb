class CreateShoppings < ActiveRecord::Migration[6.0]
  def change
    create_table :shoppings do |t|
      t.string      :name,     null: false
      t.string      :birth,    null: false
      t.string      :item,     null: false
      t.integer     :quantity, null: false
      t.integer     :price,    null: false
      t.timestamps
    end
  end
end

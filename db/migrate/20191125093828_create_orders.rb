class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.references :pet, null: false, foreign_key: true
      t.monetize :amount, currency:  {present: false}
      t.string :state
      t.references :user, null: false, foreign_key: true
      t.string :pet_sku
      t.string :checkout_session_id

      t.timestamps
    end
  end
end

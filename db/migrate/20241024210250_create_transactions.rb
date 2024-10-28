class CreateTransactions < ActiveRecord::Migration[7.1]
  def change
    create_table :transactions do |t|
      t.references :user, null: false, foreign_key: true
      t.references :exchange_rate, null: false, foreign_key: true
      t.string :coin_to_send
      t.string :coin_to_get
      t.decimal :amount

      t.timestamps
    end
  end
end

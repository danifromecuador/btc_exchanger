class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :usd_balance_in_cents
      t.integer :btc_balance_in_sats

      t.timestamps
    end
  end
end

class CreateExchangeRates < ActiveRecord::Migration[7.1]
  def change
    create_table :exchange_rates do |t|
      t.decimal :rate

      t.timestamps
    end
  end
end

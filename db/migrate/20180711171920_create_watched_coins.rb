class CreateWatchedCoins < ActiveRecord::Migration[5.1]
  def change
    create_table :watched_coins do |t|
      t.string :initial_price
      t.belongs_to :user, foreign_key: true
      t.string :coin_belongs_to

      t.timestamps
    end
  end
end

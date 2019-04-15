class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.decimal :remaining_funds
      t.decimal :spent_funds
      t.timestamps
    end
  end
end

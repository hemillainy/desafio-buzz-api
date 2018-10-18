class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.integer :total_quota
      t.string :activation_state
      t.string :account_type

      t.timestamps
    end
  end
end

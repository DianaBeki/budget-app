class AddUserForeignKeyToPayments < ActiveRecord::Migration[7.0]
  def change
    add_reference :payments, :author, index: true, foreign_key: { to_table: :users }
  end
end

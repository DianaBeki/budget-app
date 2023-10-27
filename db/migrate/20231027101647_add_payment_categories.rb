class AddPaymentCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :payment_categories, &:timestamps
  end
end

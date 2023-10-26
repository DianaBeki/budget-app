# frozen_string_literal: true

class CreatePaymentCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :payment_categories, &:timestamps
  end
end

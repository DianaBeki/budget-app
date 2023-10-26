# frozen_string_literal: true

class AddCategoryRefToPaymentCategories < ActiveRecord::Migration[7.0]
  def change
    add_reference :payment_categories, :category, null: false, foreign_key: true
  end
end

# frozen_string_literal: true

require 'test_helper'

class PaymentsCategoriesControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get payments_categories_index_url
    assert_response :success
  end

  test 'should get show' do
    get payments_categories_show_url
    assert_response :success
  end

  test 'should get new' do
    get payments_categories_new_url
    assert_response :success
  end

  test 'should get create' do
    get payments_categories_create_url
    assert_response :success
  end

  test 'should get destroy' do
    get payments_categories_destroy_url
    assert_response :success
  end
end

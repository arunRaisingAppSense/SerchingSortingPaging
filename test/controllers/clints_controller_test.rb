require 'test_helper'

class ClintsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @clint = clints(:one)
  end

  test "should get index" do
    get clints_url
    assert_response :success
  end

  test "should get new" do
    get new_clint_url
    assert_response :success
  end

  test "should create clint" do
    assert_difference('Clint.count') do
      post clints_url, params: { clint: {  } }
    end

    assert_redirected_to clint_url(Clint.last)
  end

  test "should show clint" do
    get clint_url(@clint)
    assert_response :success
  end

  test "should get edit" do
    get edit_clint_url(@clint)
    assert_response :success
  end

  test "should update clint" do
    patch clint_url(@clint), params: { clint: {  } }
    assert_redirected_to clint_url(@clint)
  end

  test "should destroy clint" do
    assert_difference('Clint.count', -1) do
      delete clint_url(@clint)
    end

    assert_redirected_to clints_url
  end
end

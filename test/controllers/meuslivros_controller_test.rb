require 'test_helper'

class MeuslivrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @meuslivro = meuslivros(:one)
  end

  test "should get index" do
    get meuslivros_url
    assert_response :success
  end

  test "should get new" do
    get new_meuslivro_url
    assert_response :success
  end

  test "should create meuslivro" do
    assert_difference('Meuslivro.count') do
      post meuslivros_url, params: { meuslivro: { datadeinicio: @meuslivro.datadeinicio, datedetermino: @meuslivro.datedetermino, nomedolivro: @meuslivro.nomedolivro, resumo: @meuslivro.resumo } }
    end

    assert_redirected_to meuslivro_url(Meuslivro.last)
  end

  test "should show meuslivro" do
    get meuslivro_url(@meuslivro)
    assert_response :success
  end

  test "should get edit" do
    get edit_meuslivro_url(@meuslivro)
    assert_response :success
  end

  test "should update meuslivro" do
    patch meuslivro_url(@meuslivro), params: { meuslivro: { datadeinicio: @meuslivro.datadeinicio, datedetermino: @meuslivro.datedetermino, nomedolivro: @meuslivro.nomedolivro, resumo: @meuslivro.resumo } }
    assert_redirected_to meuslivro_url(@meuslivro)
  end

  test "should destroy meuslivro" do
    assert_difference('Meuslivro.count', -1) do
      delete meuslivro_url(@meuslivro)
    end

    assert_redirected_to meuslivros_url
  end
end

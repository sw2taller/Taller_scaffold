require 'test_helper'

class TransportesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transporte = transportes(:one)
  end

  test "should get index" do
    get transportes_url
    assert_response :success
  end

  test "should get new" do
    get new_transporte_url
    assert_response :success
  end

  test "should create transporte" do
    assert_difference('Transporte.count') do
      post transportes_url, params: { transporte: { cilindraje: @transporte.cilindraje, color: @transporte.color, modelo: @transporte.modelo, placa: @transporte.placa, tipo: @transporte.tipo } }
    end

    assert_redirected_to transporte_url(Transporte.last)
  end

  test "should show transporte" do
    get transporte_url(@transporte)
    assert_response :success
  end

  test "should get edit" do
    get edit_transporte_url(@transporte)
    assert_response :success
  end

  test "should update transporte" do
    patch transporte_url(@transporte), params: { transporte: { cilindraje: @transporte.cilindraje, color: @transporte.color, modelo: @transporte.modelo, placa: @transporte.placa, tipo: @transporte.tipo } }
    assert_redirected_to transporte_url(@transporte)
  end

  test "should destroy transporte" do
    assert_difference('Transporte.count', -1) do
      delete transporte_url(@transporte)
    end

    assert_redirected_to transportes_url
  end
end

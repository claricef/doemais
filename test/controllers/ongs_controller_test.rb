require 'test_helper'

class OngsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ong = ongs(:one)
  end

  test "should get index" do
    get ongs_url
    assert_response :success
  end

  test "should get new" do
    get new_ong_url
    assert_response :success
  end

  test "should create ong" do
    assert_difference('Ong.count') do
      post ongs_url, params: { ong: { bairro: @ong.bairro, ce: @ong.ce, cidade: @ong.cidade, cnpj: @ong.cnpj, email: @ong.email, endereco: @ong.endereco, fone: @ong.fone, nomefantasia: @ong.nomefantasia, numero: @ong.numero, razaosocial: @ong.razaosocial, uf: @ong.uf } }
    end

    assert_redirected_to ong_url(Ong.last)
  end

  test "should show ong" do
    get ong_url(@ong)
    assert_response :success
  end

  test "should get edit" do
    get edit_ong_url(@ong)
    assert_response :success
  end

  test "should update ong" do
    patch ong_url(@ong), params: { ong: { bairro: @ong.bairro, ce: @ong.ce, cidade: @ong.cidade, cnpj: @ong.cnpj, email: @ong.email, endereco: @ong.endereco, fone: @ong.fone, nomefantasia: @ong.nomefantasia, numero: @ong.numero, razaosocial: @ong.razaosocial, uf: @ong.uf } }
    assert_redirected_to ong_url(@ong)
  end

  test "should destroy ong" do
    assert_difference('Ong.count', -1) do
      delete ong_url(@ong)
    end

    assert_redirected_to ongs_url
  end
end

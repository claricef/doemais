require 'test_helper'

class PessoasjuridicasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pessoajuridica = pessoasjuridicas(:one)
  end

  test "should get index" do
    get pessoasjuridicas_url
    assert_response :success
  end

  test "should get new" do
    get new_pessoajuridica_url
    assert_response :success
  end

  test "should create pessoajuridica" do
    assert_difference('Pessoajuridica.count') do
      post pessoasjuridicas_url, params: { pessoajuridica: { cnpj: @pessoajuridica.cnpj, nomefantasia: @pessoajuridica.nomefantasia, razaosocial: @pessoajuridica.razaosocial } }
    end

    assert_redirected_to pessoajuridica_url(Pessoajuridica.last)
  end

  test "should show pessoajuridica" do
    get pessoajuridica_url(@pessoajuridica)
    assert_response :success
  end

  test "should get edit" do
    get edit_pessoajuridica_url(@pessoajuridica)
    assert_response :success
  end

  test "should update pessoajuridica" do
    patch pessoajuridica_url(@pessoajuridica), params: { pessoajuridica: { cnpj: @pessoajuridica.cnpj, nomefantasia: @pessoajuridica.nomefantasia, razaosocial: @pessoajuridica.razaosocial } }
    assert_redirected_to pessoajuridica_url(@pessoajuridica)
  end

  test "should destroy pessoajuridica" do
    assert_difference('Pessoajuridica.count', -1) do
      delete pessoajuridica_url(@pessoajuridica)
    end

    assert_redirected_to pessoasjuridicas_url
  end
end

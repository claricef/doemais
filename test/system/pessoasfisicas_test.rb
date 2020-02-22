require "application_system_test_case"

class PessoasfisicasTest < ApplicationSystemTestCase
  setup do
    @pessoafisica = pessoasfisicas(:one)
  end

  test "visiting the index" do
    visit pessoasfisicas_url
    assert_selector "h1", text: "Pessoasfisicas"
  end

  test "creating a Pessoafisica" do
    visit pessoasfisicas_url
    click_on "New Pessoafisica"

    fill_in "Cpf", with: @pessoafisica.cpf
    fill_in "Nome", with: @pessoafisica.nome
    fill_in "Rg", with: @pessoafisica.rg
    click_on "Create Pessoafisica"

    assert_text "Pessoafisica was successfully created"
    click_on "Back"
  end

  test "updating a Pessoafisica" do
    visit pessoasfisicas_url
    click_on "Edit", match: :first

    fill_in "Cpf", with: @pessoafisica.cpf
    fill_in "Nome", with: @pessoafisica.nome
    fill_in "Rg", with: @pessoafisica.rg
    click_on "Update Pessoafisica"

    assert_text "Pessoafisica was successfully updated"
    click_on "Back"
  end

  test "destroying a Pessoafisica" do
    visit pessoasfisicas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pessoafisica was successfully destroyed"
  end
end

require "application_system_test_case"

class OngsTest < ApplicationSystemTestCase
  setup do
    @ong = ongs(:one)
  end

  test "visiting the index" do
    visit ongs_url
    assert_selector "h1", text: "Ongs"
  end

  test "creating a Ong" do
    visit ongs_url
    click_on "New Ong"

    fill_in "Bairro", with: @ong.bairro
    fill_in "Ce", with: @ong.ce
    fill_in "Cidade", with: @ong.cidade
    fill_in "Cnpj", with: @ong.cnpj
    fill_in "Email", with: @ong.email
    fill_in "Endereco", with: @ong.endereco
    fill_in "Fone", with: @ong.fone
    fill_in "Nomefantasia", with: @ong.nomefantasia
    fill_in "Numero", with: @ong.numero
    fill_in "Razaosocial", with: @ong.razaosocial
    fill_in "Uf", with: @ong.uf
    click_on "Create Ong"

    assert_text "Ong was successfully created"
    click_on "Back"
  end

  test "updating a Ong" do
    visit ongs_url
    click_on "Edit", match: :first

    fill_in "Bairro", with: @ong.bairro
    fill_in "Ce", with: @ong.ce
    fill_in "Cidade", with: @ong.cidade
    fill_in "Cnpj", with: @ong.cnpj
    fill_in "Email", with: @ong.email
    fill_in "Endereco", with: @ong.endereco
    fill_in "Fone", with: @ong.fone
    fill_in "Nomefantasia", with: @ong.nomefantasia
    fill_in "Numero", with: @ong.numero
    fill_in "Razaosocial", with: @ong.razaosocial
    fill_in "Uf", with: @ong.uf
    click_on "Update Ong"

    assert_text "Ong was successfully updated"
    click_on "Back"
  end

  test "destroying a Ong" do
    visit ongs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ong was successfully destroyed"
  end
end

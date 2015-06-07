require 'test_helper'

class ApTipoContatosControllerTest < ActionController::TestCase
  setup do
    @ap_tipo_contato = ap_tipo_contatos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ap_tipo_contatos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ap_tipo_contato" do
    assert_difference('ApTipoContato.count') do
      post :create, ap_tipo_contato: { atualizadoPor: @ap_tipo_contato.atualizadoPor, dataDeAtualizacao: @ap_tipo_contato.dataDeAtualizacao, dataDeInsercao: @ap_tipo_contato.dataDeInsercao, flgStatus: @ap_tipo_contato.flgStatus, inseridoPor: @ap_tipo_contato.inseridoPor, nome: @ap_tipo_contato.nome }
    end

    assert_redirected_to ap_tipo_contato_path(assigns(:ap_tipo_contato))
  end

  test "should show ap_tipo_contato" do
    get :show, id: @ap_tipo_contato
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ap_tipo_contato
    assert_response :success
  end

  test "should update ap_tipo_contato" do
    patch :update, id: @ap_tipo_contato, ap_tipo_contato: { atualizadoPor: @ap_tipo_contato.atualizadoPor, dataDeAtualizacao: @ap_tipo_contato.dataDeAtualizacao, dataDeInsercao: @ap_tipo_contato.dataDeInsercao, flgStatus: @ap_tipo_contato.flgStatus, inseridoPor: @ap_tipo_contato.inseridoPor, nome: @ap_tipo_contato.nome }
    assert_redirected_to ap_tipo_contato_path(assigns(:ap_tipo_contato))
  end

  test "should destroy ap_tipo_contato" do
    assert_difference('ApTipoContato.count', -1) do
      delete :destroy, id: @ap_tipo_contato
    end

    assert_redirected_to ap_tipo_contatos_path
  end
end

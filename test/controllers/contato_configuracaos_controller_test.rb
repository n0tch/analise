require 'test_helper'

class ContatoConfiguracaosControllerTest < ActionController::TestCase
  setup do
    @contato_configuracao = contato_configuracaos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contato_configuracaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contato_configuracao" do
    assert_difference('ContatoConfiguracao.count') do
      post :create, contato_configuracao: { atualizadoPor: @contato_configuracao.atualizadoPor, dataDeAtualizacao: @contato_configuracao.dataDeAtualizacao, dataDeInsercao: @contato_configuracao.dataDeInsercao, email: @contato_configuracao.email, host: @contato_configuracao.host, inseridoPor: @contato_configuracao.inseridoPor, porta: @contato_configuracao.porta, senha: @contato_configuracao.senha, smtp: @contato_configuracao.smtp }
    end

    assert_redirected_to contato_configuracao_path(assigns(:contato_configuracao))
  end

  test "should show contato_configuracao" do
    get :show, id: @contato_configuracao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contato_configuracao
    assert_response :success
  end

  test "should update contato_configuracao" do
    patch :update, id: @contato_configuracao, contato_configuracao: { atualizadoPor: @contato_configuracao.atualizadoPor, dataDeAtualizacao: @contato_configuracao.dataDeAtualizacao, dataDeInsercao: @contato_configuracao.dataDeInsercao, email: @contato_configuracao.email, host: @contato_configuracao.host, inseridoPor: @contato_configuracao.inseridoPor, porta: @contato_configuracao.porta, senha: @contato_configuracao.senha, smtp: @contato_configuracao.smtp }
    assert_redirected_to contato_configuracao_path(assigns(:contato_configuracao))
  end

  test "should destroy contato_configuracao" do
    assert_difference('ContatoConfiguracao.count', -1) do
      delete :destroy, id: @contato_configuracao
    end

    assert_redirected_to contato_configuracaos_path
  end
end

require 'test_helper'

class InstituicaosControllerTest < ActionController::TestCase
  setup do
    @instituicao = instituicaos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:instituicaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create instituicao" do
    assert_difference('Instituicao.count') do
      post :create, instituicao: { atualizadoPor: @instituicao.atualizadoPor, dataDeAtualizacao: @instituicao.dataDeAtualizacao, dataDeInsercao: @instituicao.dataDeInsercao, flgStatus: @instituicao.flgStatus, inseridoPor: @instituicao.inseridoPor, nome: @instituicao.nome, site: @instituicao.site }
    end

    assert_redirected_to instituicao_path(assigns(:instituicao))
  end

  test "should show instituicao" do
    get :show, id: @instituicao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @instituicao
    assert_response :success
  end

  test "should update instituicao" do
    patch :update, id: @instituicao, instituicao: { atualizadoPor: @instituicao.atualizadoPor, dataDeAtualizacao: @instituicao.dataDeAtualizacao, dataDeInsercao: @instituicao.dataDeInsercao, flgStatus: @instituicao.flgStatus, inseridoPor: @instituicao.inseridoPor, nome: @instituicao.nome, site: @instituicao.site }
    assert_redirected_to instituicao_path(assigns(:instituicao))
  end

  test "should destroy instituicao" do
    assert_difference('Instituicao.count', -1) do
      delete :destroy, id: @instituicao
    end

    assert_redirected_to instituicaos_path
  end
end

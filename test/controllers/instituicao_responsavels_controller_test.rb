require 'test_helper'

class InstituicaoResponsavelsControllerTest < ActionController::TestCase
  setup do
    @instituicao_responsavel = instituicao_responsavels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:instituicao_responsavels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create instituicao_responsavel" do
    assert_difference('InstituicaoResponsavel.count') do
      post :create, instituicao_responsavel: { atualizadoPor: @instituicao_responsavel.atualizadoPor, dataDeAtualizacao: @instituicao_responsavel.dataDeAtualizacao, dataDeInsercao: @instituicao_responsavel.dataDeInsercao, inseridoPor: @instituicao_responsavel.inseridoPor, instituicao_id: @instituicao_responsavel.instituicao_id, nome: @instituicao_responsavel.nome }
    end

    assert_redirected_to instituicao_responsavel_path(assigns(:instituicao_responsavel))
  end

  test "should show instituicao_responsavel" do
    get :show, id: @instituicao_responsavel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @instituicao_responsavel
    assert_response :success
  end

  test "should update instituicao_responsavel" do
    patch :update, id: @instituicao_responsavel, instituicao_responsavel: { atualizadoPor: @instituicao_responsavel.atualizadoPor, dataDeAtualizacao: @instituicao_responsavel.dataDeAtualizacao, dataDeInsercao: @instituicao_responsavel.dataDeInsercao, inseridoPor: @instituicao_responsavel.inseridoPor, instituicao_id: @instituicao_responsavel.instituicao_id, nome: @instituicao_responsavel.nome }
    assert_redirected_to instituicao_responsavel_path(assigns(:instituicao_responsavel))
  end

  test "should destroy instituicao_responsavel" do
    assert_difference('InstituicaoResponsavel.count', -1) do
      delete :destroy, id: @instituicao_responsavel
    end

    assert_redirected_to instituicao_responsavels_path
  end
end

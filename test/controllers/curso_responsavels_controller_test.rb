require 'test_helper'

class CursoResponsavelsControllerTest < ActionController::TestCase
  setup do
    @curso_responsavel = curso_responsavels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:curso_responsavels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create curso_responsavel" do
    assert_difference('CursoResponsavel.count') do
      post :create, curso_responsavel: { atualizadoPor: @curso_responsavel.atualizadoPor, dataDeAtualizacao: @curso_responsavel.dataDeAtualizacao, dataDeInsercao: @curso_responsavel.dataDeInsercao, idioma: @curso_responsavel.idioma, inseridoPor: @curso_responsavel.inseridoPor }
    end

    assert_redirected_to curso_responsavel_path(assigns(:curso_responsavel))
  end

  test "should show curso_responsavel" do
    get :show, id: @curso_responsavel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @curso_responsavel
    assert_response :success
  end

  test "should update curso_responsavel" do
    patch :update, id: @curso_responsavel, curso_responsavel: { atualizadoPor: @curso_responsavel.atualizadoPor, dataDeAtualizacao: @curso_responsavel.dataDeAtualizacao, dataDeInsercao: @curso_responsavel.dataDeInsercao, idioma: @curso_responsavel.idioma, inseridoPor: @curso_responsavel.inseridoPor }
    assert_redirected_to curso_responsavel_path(assigns(:curso_responsavel))
  end

  test "should destroy curso_responsavel" do
    assert_difference('CursoResponsavel.count', -1) do
      delete :destroy, id: @curso_responsavel
    end

    assert_redirected_to curso_responsavels_path
  end
end

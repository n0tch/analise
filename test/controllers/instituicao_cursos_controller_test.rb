require 'test_helper'

class InstituicaoCursosControllerTest < ActionController::TestCase
  setup do
    @instituicao_curso = instituicao_cursos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:instituicao_cursos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create instituicao_curso" do
    assert_difference('InstituicaoCurso.count') do
      post :create, instituicao_curso: { atualizadoPor: @instituicao_curso.atualizadoPor, curso_id: @instituicao_curso.curso_id, dataDeAtualizacao: @instituicao_curso.dataDeAtualizacao, dataDeInsercao: @instituicao_curso.dataDeInsercao, inseridoPor: @instituicao_curso.inseridoPor, instituicao_id: @instituicao_curso.instituicao_id }
    end

    assert_redirected_to instituicao_curso_path(assigns(:instituicao_curso))
  end

  test "should show instituicao_curso" do
    get :show, id: @instituicao_curso
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @instituicao_curso
    assert_response :success
  end

  test "should update instituicao_curso" do
    patch :update, id: @instituicao_curso, instituicao_curso: { atualizadoPor: @instituicao_curso.atualizadoPor, curso_id: @instituicao_curso.curso_id, dataDeAtualizacao: @instituicao_curso.dataDeAtualizacao, dataDeInsercao: @instituicao_curso.dataDeInsercao, inseridoPor: @instituicao_curso.inseridoPor, instituicao_id: @instituicao_curso.instituicao_id }
    assert_redirected_to instituicao_curso_path(assigns(:instituicao_curso))
  end

  test "should destroy instituicao_curso" do
    assert_difference('InstituicaoCurso.count', -1) do
      delete :destroy, id: @instituicao_curso
    end

    assert_redirected_to instituicao_cursos_path
  end
end

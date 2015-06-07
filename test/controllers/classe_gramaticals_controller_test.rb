require 'test_helper'

class ClasseGramaticalsControllerTest < ActionController::TestCase
  setup do
    @classe_gramatical = classe_gramaticals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:classe_gramaticals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create classe_gramatical" do
    assert_difference('ClasseGramatical.count') do
      post :create, classe_gramatical: { atualizadoPor: @classe_gramatical.atualizadoPor, dataDeAtualizacao: @classe_gramatical.dataDeAtualizacao, dataDeInsercao: @classe_gramatical.dataDeInsercao, flgStatus: @classe_gramatical.flgStatus, idioma_id: @classe_gramatical.idioma_id, inseridoPor: @classe_gramatical.inseridoPor, nome: @classe_gramatical.nome, sigla: @classe_gramatical.sigla }
    end

    assert_redirected_to classe_gramatical_path(assigns(:classe_gramatical))
  end

  test "should show classe_gramatical" do
    get :show, id: @classe_gramatical
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @classe_gramatical
    assert_response :success
  end

  test "should update classe_gramatical" do
    patch :update, id: @classe_gramatical, classe_gramatical: { atualizadoPor: @classe_gramatical.atualizadoPor, dataDeAtualizacao: @classe_gramatical.dataDeAtualizacao, dataDeInsercao: @classe_gramatical.dataDeInsercao, flgStatus: @classe_gramatical.flgStatus, idioma_id: @classe_gramatical.idioma_id, inseridoPor: @classe_gramatical.inseridoPor, nome: @classe_gramatical.nome, sigla: @classe_gramatical.sigla }
    assert_redirected_to classe_gramatical_path(assigns(:classe_gramatical))
  end

  test "should destroy classe_gramatical" do
    assert_difference('ClasseGramatical.count', -1) do
      delete :destroy, id: @classe_gramatical
    end

    assert_redirected_to classe_gramaticals_path
  end
end

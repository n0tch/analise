require 'test_helper'

class IdiomaAvisosControllerTest < ActionController::TestCase
  setup do
    @idioma_aviso = idioma_avisos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:idioma_avisos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create idioma_aviso" do
    assert_difference('IdiomaAviso.count') do
      post :create, idioma_aviso: { aviso_id: @idioma_aviso.aviso_id, idioma_id: @idioma_aviso.idioma_id }
    end

    assert_redirected_to idioma_aviso_path(assigns(:idioma_aviso))
  end

  test "should show idioma_aviso" do
    get :show, id: @idioma_aviso
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @idioma_aviso
    assert_response :success
  end

  test "should update idioma_aviso" do
    patch :update, id: @idioma_aviso, idioma_aviso: { aviso_id: @idioma_aviso.aviso_id, idioma_id: @idioma_aviso.idioma_id }
    assert_redirected_to idioma_aviso_path(assigns(:idioma_aviso))
  end

  test "should destroy idioma_aviso" do
    assert_difference('IdiomaAviso.count', -1) do
      delete :destroy, id: @idioma_aviso
    end

    assert_redirected_to idioma_avisos_path
  end
end

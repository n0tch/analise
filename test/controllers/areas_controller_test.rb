require 'test_helper'

class AreasControllerTest < ActionController::TestCase
  setup do
    @area = areas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:areas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create area" do
    assert_difference('Area.count') do
      post :create, area: { atualizadoPor: @area.atualizadoPor, curso_id: @area.curso_id, dataDeAtualizacao: @area.dataDeAtualizacao, dataDeInsercao: @area.dataDeInsercao, flgStatus: @area.flgStatus, inseridoPor: @area.inseridoPor, nome: @area.nome }
    end

    assert_redirected_to area_path(assigns(:area))
  end

  test "should show area" do
    get :show, id: @area
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @area
    assert_response :success
  end

  test "should update area" do
    patch :update, id: @area, area: { atualizadoPor: @area.atualizadoPor, curso_id: @area.curso_id, dataDeAtualizacao: @area.dataDeAtualizacao, dataDeInsercao: @area.dataDeInsercao, flgStatus: @area.flgStatus, inseridoPor: @area.inseridoPor, nome: @area.nome }
    assert_redirected_to area_path(assigns(:area))
  end

  test "should destroy area" do
    assert_difference('Area.count', -1) do
      delete :destroy, id: @area
    end

    assert_redirected_to areas_path
  end
end

require 'test_helper'

class ApresentacaoEbooksControllerTest < ActionController::TestCase
  setup do
    @apresentacao_ebook = apresentacao_ebooks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:apresentacao_ebooks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create apresentacao_ebook" do
    assert_difference('ApresentacaoEbook.count') do
      post :create, apresentacao_ebook: { atualizadoPor: @apresentacao_ebook.atualizadoPor, conteudo: @apresentacao_ebook.conteudo, dataDeAtualizacao: @apresentacao_ebook.dataDeAtualizacao, dataDeInsercao: @apresentacao_ebook.dataDeInsercao, inseridoPor: @apresentacao_ebook.inseridoPor }
    end

    assert_redirected_to apresentacao_ebook_path(assigns(:apresentacao_ebook))
  end

  test "should show apresentacao_ebook" do
    get :show, id: @apresentacao_ebook
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @apresentacao_ebook
    assert_response :success
  end

  test "should update apresentacao_ebook" do
    patch :update, id: @apresentacao_ebook, apresentacao_ebook: { atualizadoPor: @apresentacao_ebook.atualizadoPor, conteudo: @apresentacao_ebook.conteudo, dataDeAtualizacao: @apresentacao_ebook.dataDeAtualizacao, dataDeInsercao: @apresentacao_ebook.dataDeInsercao, inseridoPor: @apresentacao_ebook.inseridoPor }
    assert_redirected_to apresentacao_ebook_path(assigns(:apresentacao_ebook))
  end

  test "should destroy apresentacao_ebook" do
    assert_difference('ApresentacaoEbook.count', -1) do
      delete :destroy, id: @apresentacao_ebook
    end

    assert_redirected_to apresentacao_ebooks_path
  end
end

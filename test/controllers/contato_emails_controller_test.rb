require 'test_helper'

class ContatoEmailsControllerTest < ActionController::TestCase
  setup do
    @contato_email = contato_emails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contato_emails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contato_email" do
    assert_difference('ContatoEmail.count') do
      post :create, contato_email: { ap_tipo_contato_id: @contato_email.ap_tipo_contato_id, atualizadoPor: @contato_email.atualizadoPor, dataDeAtualizacao: @contato_email.dataDeAtualizacao, dataDeInsercao: @contato_email.dataDeInsercao, email: @contato_email.email, flgStatus: @contato_email.flgStatus, inseridoPor: @contato_email.inseridoPor, nome: @contato_email.nome }
    end

    assert_redirected_to contato_email_path(assigns(:contato_email))
  end

  test "should show contato_email" do
    get :show, id: @contato_email
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contato_email
    assert_response :success
  end

  test "should update contato_email" do
    patch :update, id: @contato_email, contato_email: { ap_tipo_contato_id: @contato_email.ap_tipo_contato_id, atualizadoPor: @contato_email.atualizadoPor, dataDeAtualizacao: @contato_email.dataDeAtualizacao, dataDeInsercao: @contato_email.dataDeInsercao, email: @contato_email.email, flgStatus: @contato_email.flgStatus, inseridoPor: @contato_email.inseridoPor, nome: @contato_email.nome }
    assert_redirected_to contato_email_path(assigns(:contato_email))
  end

  test "should destroy contato_email" do
    assert_difference('ContatoEmail.count', -1) do
      delete :destroy, id: @contato_email
    end

    assert_redirected_to contato_emails_path
  end
end

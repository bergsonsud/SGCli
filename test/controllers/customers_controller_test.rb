require 'test_helper'

class CustomersControllerTest < ActionController::TestCase
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post :create, customer: { bairro: @customer.bairro, cei: @customer.cei, celular2: @customer.celular2, celular: @customer.celular, cgf: @customer.cgf, cnpj: @customer.cnpj, cod: @customer.cod, complemento: @customer.complemento, contato2: @customer.contato2, contato: @customer.contato, desde: @customer.desde, email2: @customer.email2, email: @customer.email, endereco_coleta: @customer.endereco_coleta, estado: @customer.estado, honorarios: @customer.honorarios, iss: @customer.iss, logradouro: @customer.logradouro, municipio: @customer.municipio, numero: @customer.numero, razao: @customer.razao, telefone2: @customer.telefone2, telefone3: @customer.telefone3, telefone: @customer.telefone }
    end

    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should show customer" do
    get :show, id: @customer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer
    assert_response :success
  end

  test "should update customer" do
    patch :update, id: @customer, customer: { bairro: @customer.bairro, cei: @customer.cei, celular2: @customer.celular2, celular: @customer.celular, cgf: @customer.cgf, cnpj: @customer.cnpj, cod: @customer.cod, complemento: @customer.complemento, contato2: @customer.contato2, contato: @customer.contato, desde: @customer.desde, email2: @customer.email2, email: @customer.email, endereco_coleta: @customer.endereco_coleta, estado: @customer.estado, honorarios: @customer.honorarios, iss: @customer.iss, logradouro: @customer.logradouro, municipio: @customer.municipio, numero: @customer.numero, razao: @customer.razao, telefone2: @customer.telefone2, telefone3: @customer.telefone3, telefone: @customer.telefone }
    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete :destroy, id: @customer
    end

    assert_redirected_to customers_path
  end
end

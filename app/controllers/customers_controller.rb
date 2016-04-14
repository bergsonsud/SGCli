class CustomersController < ApplicationController  
  before_action :set_customer, only: [:show, :edit, :update, :destroy]

  # GET /customers
  # GET /customers.json
  def index
    
    type_search = params[:type_search]
    search = params[:search]
    params[:pagination] = Customer.per_page

    @per_page = params[:per_page] || Customer.per_page || 5
    @per_page = Customer.all.count if params[:per_page] == 'Todos'
    
    
    @search = Customer.all    
    if type_search != 'razao' && type_search.present?
      @search = @search.where(type_search+' =?',search).all 
    end
    @search = @search.where("razao like ?", "%"+search+"%") if type_search == 'razao'

    @search = @search.order(:razao).search(params[:q])
    @customers = @search.result.paginate( :per_page => @per_page, :page => params[:page])
    @total = @customers.count
    @ppage = @per_page
    #@customers = Customer.paginate( :per_page => @per_page, :page => params[:page]).all
  end

  # GET /customers/1
  # GET /customers/1.json
  def show
  end

  # GET /customers/new
  def new
    @customer = Customer.new    
  end

  # GET /customers/1/edit
  def edit
  end

  # POST /customers
  # POST /customers.json
  def create
    @customer = Customer.new(customer_params)

    respond_to do |format|
      if @customer.save
        format.html { redirect_to @customer, notice: 'Customer was successfully created.' }
        format.json { head :no_content }
        format.js
      else        
        format.json { render json: @customer.errors.full_messages, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customers/1
  # PATCH/PUT /customers/1.json
  def update
    respond_to do |format|
      if @customer.update(customer_params)
        format.json { head :no_content }
        format.js
      else        
        format.json { render json: @customer.errors.full_messages, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/1
  # DELETE /customers/1.json
  def destroy
    @customer.destroy
    respond_to do |format|
      format.html { redirect_to customers_url}
      ormat.js      
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_params
      params.require(:customer).permit(:razao, :iss, :cnpj, :cei, :cgf, :cod, :logradouro, :numero, :bairro, :complemento, :municipio, :estado, :telefone, :telefone2, :telefone3, :celular, :celular2, :email, :email2, :contato, :contato2, :endereco_coleta, :honorarios, :desde)
    end
end

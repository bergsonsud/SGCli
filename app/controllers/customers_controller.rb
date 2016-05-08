class CustomersController < ApplicationController  
  before_action :set_customer, only: [:show, :edit, :update, :destroy, :switch]
  before_action :prepare_customers, only: [:index, :report_honorarios]
  

  # GET /customers
  # GET /customers.json
  def index
    if !valid_params?      
      @search = Customer.search(params[:q])
      @customers = []
      return
    end    
  end

  def switch
    @customer.active = params[:active]
    respond_to do |format|
      if @customer.save
       
        format.json { head :no_content }
        format.js
        
      else        
        format.json { render json: @customer.errors.full_messages, status: :unprocessable_entity }
      end
    end

  end

  def report_honorarios
    @index = Config.find_by_parametro("SGVRELHO").valor.to_f
    @index = params[:index].to_f if params[:index].present?
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
    @customer.desde = DateTime.parse(Time.zone.now.to_s) if Date.parse(@customer.desde.to_s) == Date.current
    respond_to do |format|
      if @customer.save
        #format.html { redirect_to @customer, notice: 'Customer was successfully created.' }
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
      format.js      
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
      params.require(:customer).permit(:razao, :iss, :cnpj, :cei, :cgf, :cod, :logradouro, :numero, :bairro, :complemento, :municipio, :estado, :telefone, :telefone2, :telefone3, :celular, :celular2, :email, :email2, :contato, :contato2, :endereco_coleta, :honorarios, :desde, :active)
    end

    def valid_params?
      if params[:type_search] == "id"
        id = params[:search]
        return false if id.to_i == 0 
      end 

      true
    end

  def prepare_customers    
    type_search = params[:type_search]
    search = params[:search]
    params[:pagination] = Customer.per_page

    @per_page = params[:per_page] || Customer.per_page || 5
    @per_page = Customer.all.count if params[:per_page] == 'Todos'
    

    params[:active] = true if !current_user.admin?

    
    @search = Customer.where(active: params[:active])    
    if type_search != 'razao' && type_search.present?
      @search = @search.where(type_search+' =?',search).all 
    end
    @search = @search.where("razao ILIKE ?", "%"+search+"%") if type_search == 'razao'

    @search = @search.order(:razao).search(params[:q])
    @customers = @search.result.paginate( :per_page => @per_page, :page => params[:page])
    @report_honorarios = @search.result.where('honorarios >0')
    @total = @customers.count
    @ppage = @per_page
  end
end

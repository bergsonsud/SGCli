class CustomersController < ApplicationController  
  before_action :set_customer, only: [:show, :edit, :update, :destroy, :switch]
  before_action :prepare_customers, only: [:index, :report_honorarios]
  before_action :verify_user_admin, only: [:report_honorarios,:receipt]
  

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
    @index = Setting.find_by_parametro("SGVRELHO").valor.gsub(',', '.').to_f
    @index = params[:index].to_f if params[:index].present?
    @total = calc_total(@customers,@index)
  end

  def calc_total(customers,index)
    total = 0
    customers.each do |c|
      total = total + (c.honorarios.to_f/100) * index
    end
    return total
  end

  # GET /customers/1
  # GET /customers/1.json
  def show
  end

  def prepare_receipt    
  end

  def make_receipt
    redirect_to receipt_customers_path
  end

   def receipt
    
    customers = Customer.all 
      respond_to do |format|
        #format.html
            format.pdf do            
              pdf = make_pages customers
              send_data pdf.render, filename: "x.pdf", type: "application/pdf", disposition: 'inline'
            end
      end 
    
   end


   def def_texto_recibo c,quantia      
      extenso = ExtensoReal.por_extenso_em_reais(quantia)
      quantia = ActionController::Base.helpers.number_to_currency(quantia)
      return "RECEBI de "+c.razao+", a quantia de R$ "+quantia+" ("+extenso+"), referente a (HISTORICO EDITAVEL – 500 CARACTERES), Pelo que firmo o presente recibo de quitação do valor recebido."
   end

  def make_pages customers    
    c_total = Customer.all.count    
    k = 0
    pdf = Prawn::Document.new  
        customers.each do |c|
        k+=1        
            aux = k % 2 == 0 ? 330 : 0
            pdf.bounding_box([0,730-aux], :width => 538, :height => 300) do #740 / 2
                pdf.stroke_bounds   
                pdf.text_box "FRANZÉ TELES CONTABILIDADE",:width => 538,:align => :center,:at => [0,285],:size => 28,:styles => :bold
                pdf.fill_color "848484" 
                pdf.text_box "Rua 17, 51 Novo Oriente - Maracanaú-CE CEP 61.921-180 - (85) 98893-0581 / 3467-7074 / 3467-9952",
                :width => 538,:align => :center,:at => [0,260],                      
                :size => 9
                pdf.fill_color "00000" 
                
                pdf.bounding_box([415,220], :width => 100, :height => 30) do #740 / 2
                    pdf.stroke_bounds 
                    pdf.text_box "Nº",:at => [4,19]
                end

                #image water mark
                pdf.transparent(0.3) do
                    pdf.image "#{Rails.root}/app/assets/images/contabilidade.jpg",:at =>[145, 260],:scale => 0.60
                end
                          
                #body
                pdf.text_box "RECIBO",:width => 538,:align => :center,:at => [0,205],:size => 18,:styles => :bold
                pdf.text_box def_texto_recibo(c,233.26),:width => 500,:align => :justify,:at => [18,165],:size => 10,:styles => :bold,:leading => 5
                pdf.text_box "Maracanaú, ____/ ____/ ______",:at => [350,45],:size => 10,:styles => :bold
            
            end
              pdf.start_new_page if k<c_total && k%2 == 0
               
            end
              
    return pdf
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

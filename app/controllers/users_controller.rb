class UsersController < ApplicationController
	before_action :set_user, only: [:show, :edit, :update, :destroy]

	def index
		@users = User.where('id != (?)',1).all
	end

	def show
  end


  def edit
  end

  def new  
    @user = User.new    
  end

  def create  
    @current_user = current_user
    puts @current_user.name
    @user = Usera.new(user_params)

    respond_to do |format|
      if @user.save       
        format.json { head :no_content }
        format.js 

      else        
        format.json { render json: @user.errors.full_messages, status: :unprocessable_entity }
      end
    end
    sign_in(@current_user)
     puts "############################################3########"
  end

  	def update
	    respond_to do |format|
	      if @user.update(user_params)
	        format.json { head :no_content }
	        format.js
	      else        
	        format.json { render json: @user.errors.full_messages, status: :unprocessable_entity }
	      end
	    end
  	end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url}
      format.js      
      format.json { head :no_content }
    end
  end  

private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name,:email,:password,:admin)
    end  	
end

class UsersController < ApplicationController
	before_action :set_user, only: [:show, :edit, :update, :destroy]

	def index
		@users = User.all
	end

	def show
  	end

  	def edit
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

private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:admin)
    end  	
end

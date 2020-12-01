class UsersController < ApplicationController
    before_action :set_user, only: [:new, :create,:show, :destroy]
    
    
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)

        if @user.save
            session[:user_id] = @user.id
            
            redirect_to root_path, notice: "Usuario #{@user.name} estas registrado correctamente"
          else
            render 'new'
        end
    end

    def show 
    end

    def destroy

    end

    def profile
        @user = User.find(current_user.id)
    end
    private

    def set_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:name, :email, :password)
    end
end
class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)

        if @user.save
            session[:user_id] = @user.id
            
            redirect_to root_path, notice: "Usuario #{user.name} estas registrado correctamente"
          else
            render 'new'
        end
    end

    def destroy

    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :password)
    end
end
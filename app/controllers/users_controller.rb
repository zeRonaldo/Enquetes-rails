class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user =User.new(allowed_params)
        if @user.save
            redirect_to root_url, notice: "Obrigado por se Cadastrar"
        else
            render "new"
        end
    end

    private
    def allowed_params
        params.require(:user).permit(:name, :sex, :email, :password, :password_confirmation)
    end  

end

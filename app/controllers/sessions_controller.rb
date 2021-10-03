class SessionsController < ApplicationController
    def new
    end

    def create
        # byebug
        if !params[:name] || params[:name].empty?
            redirect_to controller: 'sessions', action: 'new'
        else
            session[:name] = params[:name]
            redirect_to root_path
        end
    end

    def destroy
        session.delete :name
        redirect_to login_path
    end
end

# Prefix Verb URI Pattern       Controller#Action
#   root GET  /                 application#hello
#  login GET  /login(.:format)  sessions#new
#        POST /login(.:format)  sessions#create
# logout POST /logout(.:format) sessions#destroy
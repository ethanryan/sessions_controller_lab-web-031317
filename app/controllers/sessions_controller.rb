class SessionsController < ApplicationController

#routes:::::::::::::
  # get 'sessions/new'
  #
  # root 'application#hello'
  # get '/login' => 'sessions#new'
  # post '/login' => 'sessions#create'
  # post '/logout' => 'sessions#destroy'

  def new
    # nothing to do here!
  end

  def create
    @username = params[:name] #set @username to params[:name] input by user on new.html.erb form_tag
    if @username == nil || @username == ""
      redirect_to '/sessions/new'
    else
      session[:name] = params[:name] #set session[:name] to params[:name] input by user on new.html.erb form_tag
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/sessions/new' #logout will actually be a submit button that we style to look like a link
  end

end

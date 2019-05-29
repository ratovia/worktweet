class WelcomeController < ApplicationController
  def index
    redirect_to controller: :users, action: :show,id: 1
  end
end

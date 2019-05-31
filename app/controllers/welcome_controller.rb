class WelcomeController < ApplicationController
  layout 'none'
  def index
    redirect_to controller: :users, action: :show,id: 1
  end

  def portfolio
  end
end

class StoreController < ApplicationController

  def index
    @products = Product.order(:title)
    @store_session_count = session_counter
  end


  private

  # counts the number of times a user visits the homepage
  def session_counter

    if session[:counter].nil?
      session[:counter] = 1
    else
      session[:counter] += 1
    end

    return session[:counter]

  end

end

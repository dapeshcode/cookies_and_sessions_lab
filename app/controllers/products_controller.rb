class ProductsController < ApplicationController
    helper_method :cart
    def index
        cart
    end 

    def add 
        cart << params[:product]
        render :index
    end 

    def cart
       @cart = session[:cart] ||= []
    end 
end

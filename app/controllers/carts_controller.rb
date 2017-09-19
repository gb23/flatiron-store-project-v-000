class CartsController < ApplicationController
    before_action :find_cart, only: [:show, :checkout]

    def checkout
        
        redirect_to cart_path(@cart)
    end


    private

    def find_cart
        @cart = Cart.find(params[:id])
    end
end

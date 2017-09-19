class CartsController < ApplicationController
    before_action :find_cart, only: [:show, :checkout]

    def checkout
        
        @cart.status = "submitted"
        
        @cart.update_inventory
        current_user.current_cart = nil
        current_user.save
        @cart.save
        redirect_to cart_path(@cart)
    end


    private

    def find_cart
        @cart = Cart.find(params[:id])
    end
end

class CartsController < ApplicationController
    before_action :find_cart, only: [:show]

    def show
        
    end


    private

    def find_cart
        @cart = Cart.find(params[:id])
    end
end

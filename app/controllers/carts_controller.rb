class CartsController < ApplicationController
    before_action :find_cart, only: [:show]

    def show
        
        binding.pry
    end


    private

    def find_cart
        @cart = Cart.find(params[:id])
    end
end

class LineItemsController < ApplicationController

    def create
binding.pry
        @line_item = LineItem.new(cart_id: current_user, item_id: params[:item_id])
        if current_user.current_cart.nil?

        end
    end


end

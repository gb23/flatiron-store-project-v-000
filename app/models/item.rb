class Item < ActiveRecord::Base
    belongs_to :category
    has_many :line_items
    has_many :order_items


    def self.available_items
        self.all.select do |item|
            item if item.inventory > 0
        end
    end
end
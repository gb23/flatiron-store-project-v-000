# == Schema Information
#
# Table name: carts
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  status     :string           default("not submitted")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Cart < ActiveRecord::Base
    has_many :line_items  #, dependent: :destroy
    has_many :items, through: :line_items
    belongs_to :user

    def total
        tot = 0
        self.line_items.each do |line_item|
            tot += line_item.item.price * line_item.quantity
        end
        tot
    end

    def add_item(item_id)
        line_item = self.line_items.find_by(item_id: item_id)
        if line_item
          line_item.quantity += 1
        else
          line_item=self.line_items.build(item_id: item_id)
        end
        line_item
      end

    def update_inventory
        
    end
end
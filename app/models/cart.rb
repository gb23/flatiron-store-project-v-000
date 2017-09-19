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
binding.pry
        self.items.create(id: item_id)
    end
end
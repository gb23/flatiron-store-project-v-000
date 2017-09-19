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
        self.items.each do |item|
            tot += item.price
        end
    end
end
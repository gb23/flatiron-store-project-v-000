# == Schema Information
#
# Table name: items
#
#  id          :integer          not null, primary key
#  title       :string
#  inventory   :integer
#  price       :integer
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Item < ActiveRecord::Base
    belongs_to :category
    has_many :line_items
    has_many :order_items


    #methods
end
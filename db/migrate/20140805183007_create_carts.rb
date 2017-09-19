class CreateCarts < ActiveRecord::Migration
  def change
    has_many :line_items
    has_many :items, through: :line_items
  end
end

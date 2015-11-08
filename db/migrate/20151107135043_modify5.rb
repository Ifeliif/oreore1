class Modify5 < ActiveRecord::Migration
  def up
    Cart.all.each do |cart|
      sums = cart.line_items.group(:book_id).sum(:quantity)
      sums.each do |book_id, quantity|
        if quantity > 1
          cart.line_items.where(book_id: book_id).delete_all
          cart.line_items.create(book_id: book_id, quantity: quantity)
        end
      end
    end
  end
end

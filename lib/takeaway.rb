require './lib/menu.rb'
require './lib/order.rb'

class Takeaway

  attr_reader :menu

  def initialize(order=Order.new)
    @menu = order.read_menu
    @order = order
  end

  def check_order
    #basket summary
     @order.entire_order
  end

  def running_total
    #@order.total
  end

  def order_food(item, quantity=1)
    fail "Item isn't on the menu!" if not_on_menu(item)
    @order.add_food(item, quantity)
  end

  # checkout
    #will do something in the order screen to interact with the messaging app and place the order directly
    #@order.send

  private

  def not_on_menu(item)
    !(@menu.include?(item))
  end

end
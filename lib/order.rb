#handles addition and subtraction from the order
#stores the total order in the class
#eventually handles the total monetaryvalue of the order placed by the user
#sends the message to the message class to place the order after final confirmation is received from the user

class Order

  attr_reader :entire_order

  def initialize(menu = Menu.new)
    @menu = menu
    @entire_order = {}
    @new_order = {}
  # => @message = Message.new
  end

  def read_menu
    @menu.items
  end

  def add_food(item, quantity=1)
    @new_order[item] = quantity
    update_order
  end

  def running_total

  end

  #def send
    #message.twilio(@entire_order)
  #end

  private

  def update_order
    @entire_order.merge!(@new_order) { |key, v1, v2| v1 + v2 }
    @new_order = {}
    "Order successfully placed!"
  end

  def calculation
    @entire_order.each {}
  end


end
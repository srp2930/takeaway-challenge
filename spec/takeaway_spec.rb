require 'takeaway'

describe Takeaway do
  let(:takeaway) {described_class.new}
  let(:items) { {peas: 1.99, chips: 2.99} }
  let(:item) { double :item }
  let(:cheese) { double :item_not_on_menu }

  it { is_expected.to respond_to(:running_total)}

  describe '#initialization' do

    it 'should initialize with the correct menu' do
      expect(takeaway.menu).to include items
    end

    it 'should initialize with an empty order' do
      expect(takeaway.check_order).to be_empty
    end

  end

  describe '#ordering food' do
    let(:peas) {{:peas => 1}}
    let(:chips) {{:chips => 3}}
    it { is_expected.to respond_to(:check_order)}

    it 'should raise an error if the item ordered isn\'t on the menu' do
      expect{takeaway.order_food(cheese)}.to raise_error("Item isn't on the menu!")
      end

    it 'should add food to the order at the default value of one if unspecified' do
      takeaway.order_food(:peas)
      expect(takeaway.check_order).to include peas
    end

    it 'should add food to order in correct quantity if specified' do
      takeaway.order_food(:chips, 3)
      expect(takeaway.check_order).to include chips
    end
  end

  describe '#total' do
    it 'calculates the final total of the food ordered'
  end




end
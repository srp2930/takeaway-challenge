require 'order'

describe Order do
let (:order) { described_class.new }
let (:food) { double :food }
let(:items) { {peas: 1.99, chips: 2.99} }


  describe '#initialize' do
    it 'should initialize with an empty order hash' do
      expect(order.entire_order).to be_empty
    end
  end

  describe '#read_menu' do
    it 'should read the menu' do
      expect(order.read_menu).to include items
    end
  end

  describe '#add_food' do

    let(:addition) {{:food => 2}}
    let(:addition2) {{:food => 1}}

    it { is_expected.to respond_to(:add_food).with(2).arguments}

    it 'should add food to the running order' do
      order.add_food(:food, 2)
      expect(order.entire_order).to include addition
    end

    it 'should assume a quantity of 1 if none specified' do
      order.add_food(:food)
      expect(order.entire_order).to include addition2
    end

  end


  describe
    # it { is_expected.to respond_to(:running_total)}





end
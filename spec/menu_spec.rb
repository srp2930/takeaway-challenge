require 'menu'

describe Menu do

let(:menu) { described_class.new }
let(:items) { {peas: 1.99, chips: 2.99} }

  it 'should have the correct list of items at initalization' do
      expect(menu.items).to include items
  end

end
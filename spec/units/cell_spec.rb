require 'cell'

describe Cell do

  subject(:cell) { described_class.new(1, 2) }

  it { is_expected.to respond_to(:alive?, :x, :y, :set_status) }

  it 'Status defaults to being dead' do
    expect(cell.alive?).to be false
  end

	context 'Status' do
	  before do
	  	cell.set_status('alive')
	  end

	  it 'Can be revived' do
	  	expect(cell.alive?).to be true
	  end

    it 'Can be killed' do
	  	cell.set_status('dead')
	  	expect(cell.alive?).to be false
	  end

	  it 'Knows its co-ordinates' do
	  	expect(cell.x).to eq 1
	  	expect(cell.y).to eq 2
	  end
	end

end

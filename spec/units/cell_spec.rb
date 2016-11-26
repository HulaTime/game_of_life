require 'cell'

describe Cell do

  subject(:cell) { described_class.new(1,1) }

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
	end

  it 'Is initialized with a value for x and y' do
  	expect(cell.x).to eq 1
  	expect(cell.y).to eq 1
  end

end

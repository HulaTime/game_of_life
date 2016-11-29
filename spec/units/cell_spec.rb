require 'cell'

describe Cell do

  subject(:cell) { described_class.new }

  it 'Status defaults to being dead' do
    expect(cell.alive).to be false
  end

  it 'Can set its co-ordinates' do
  	cell.set(1, 2)
  	expect(cell.x).to eq 1
  	expect(cell.y).to eq 2
  end

	context 'Status' do
	  before do
	  	cell.revive
	  end

	  it 'Can be revived' do
	  	expect(cell.alive).to be true
	  end

    it 'Can be killed' do
	  	cell.kill
	  	expect(cell.alive).to be false
	  end

	  it 'Is initialized with no co-ordinates' do
	  	expect(cell.x).to eq nil
	  	expect(cell.y).to eq nil
	  end
	end

end

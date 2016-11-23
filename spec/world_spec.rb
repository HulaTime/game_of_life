require 'world'

describe World do

	GRID_SIZE = 3

	subject(:world) { described_class.new(GRID_SIZE,GRID_SIZE) }

	it { is_expected.to respond_to(:row_num, :col_num, :grid) }

	it 'Number of rows and columns is equal to initialized arguments' do
		expect(world.col_num).to eq GRID_SIZE
		expect(world.row_num). to eq GRID_SIZE
	end

	it 'Grid generated with supplied no. of columns and rows' do
		expect(world.grid[0].length).to eq GRID_SIZE
		expect(world.grid[1].length).to eq GRID_SIZE
	end

end
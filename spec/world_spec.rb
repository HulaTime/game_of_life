require 'world'

describe World do

	GRID_SIZE = 3

	subject(:world) { described_class.new(GRID_SIZE,GRID_SIZE) }
	let(:cell_obj) { double :cell_obj }

	it { is_expected.to respond_to(:row_num, :col_num, :grid) }

	context 'Grid' do
		it 'Number of rows and columns is equal to initialized arguments' do
			expect(world.col_num).to eq GRID_SIZE
			expect(world.row_num). to eq GRID_SIZE
		end

		it 'Generates 2D array with supplied no. of columns and rows' do
			expect(world.grid.is_a?(Array)).to be true
			expect(world.grid[0].length).to eq GRID_SIZE
			expect(world.grid[1].length).to eq GRID_SIZE
		end
	end
end
require 'world'

describe World do

  GRID_SIZE = 3

  subject(:world) { described_class.new(GRID_SIZE, GRID_SIZE, cell_obj) }
  let(:cell_obj) { double :cell_obj, alive?: false }

  it { is_expected.to respond_to(:row_num, :col_num, :grid) }

  context 'Grid' do
    it 'Number of rows and columns is equal to initialized arguments' do
      expect(world.col_num).to eq GRID_SIZE
      expect(world.row_num). to eq GRID_SIZE
    end

    it 'Generates 2D array with supplied no. of columns and rows' do
      expect(world.grid.is_a?(Array)).to be true
      expect(world.grid[0].length).to eq GRID_SIZE
      expect(world.grid.length).to eq GRID_SIZE
    end

    it 'Cells should be objects passed as arguments at initialization' do
    	world.grid.each do |row|
        row.each do |cell|
          expect(cell).to eq cell_obj
        end
      end
    end
  end

  it 'Can count the neighbours of each cell on the grid' do
    world.count_neighbours([])
  end
end

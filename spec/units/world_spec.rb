require 'world'

describe World do

  GRID_SIZE = 3

  subject(:world) { described_class.new(GRID_SIZE, GRID_SIZE, cell_obj) }
  let(:cell_obj) { double :cell_obj, alive?: false }
  let(:live_cell) { double :cell_obj, alive?: true }
  let(:seeded_grid) {[
        [cell_obj, cell_obj, live_cell],
        [cell_obj, live_cell, cell_obj],
        [cell_obj, live_cell, cell_obj]]}

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

    it 'Cells are dead by default' do
      world.grid.each do |row|
        row.each do |cell|
          expect(cell).not_to be_alive
        end
      end
    end
  end

  context 'Seeded world' do
    subject(:seeded_world) { described_class.new(GRID_SIZE, GRID_SIZE) }

    it 'Can be seeded with provided co-ordinates' do
      allow(cell_obj).to receive(:set_status).with('alive')
      world.seed([[1, 0], [1, 1], [1, 2]])
      expect(cell_obj).to have_received(:set_status).exactly(3).times
    end

    it 'Can count the neighbours of each cell on the grid' do
      allow(seeded_world).to receive(:grid).and_return(seeded_grid)
      expect(seeded_world.count_cell_neighbours([1, 1])).to eq 2
    end
  end
end

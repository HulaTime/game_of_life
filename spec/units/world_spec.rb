require 'world'

describe World do

  subject(:world) { described_class.new(cell_obj) }

  let(:grid) { Array.new(3) { Array.new(3) { cell_obj } } }
  let(:cell_obj) { double :cell_obj }

  context 'Grid' do
    it 'is a 2D array' do
      expect(world.grid).to be_an Array
      expect(world.grid[0]).to be_an Array
    end

    it 'Cells are external objects introduced in initiation' do
      world.grid.each do |column|
        column.each do |cell|
          expect(cell).to eq cell_obj
        end
      end
    end
  end

end

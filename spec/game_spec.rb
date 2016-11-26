require 'game'

describe Game do

	subject(:game) { described_class.new(world, cell_obj) }

	let(:world) { double :world }
	let(:cell_obj) { double :cell_obj }

	it { is_expected.to respond_to(:world, :cell_obj) }

	it 'Initialized with a world and cell object to populate the world' do
		expect(game.world).to eq world
		expect(game.cell_obj).to eq cell_obj
	end

	context 'Rules:' do
		xcontext 'Rule 1:' do
			it 'Live cells with less than 2 live neighbours dies' do
			end
		end
		xcontext 'Rule 2:' do
			it 'Live cells with 2 or 3 live neighbours survives generation' do
			end
		end
		xcontext 'Rule 3:' do
			it 'Live cells with more than 3 live neighbours dies' do
			end
		end
		xcontext 'Rule 4:' do
			it 'Dead cells with exactly 3 live neighbours becomes a live cell' do

			end
		end
	end

end
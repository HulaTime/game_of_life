require 'game'

describe Game do

	subject(:game) { described_class.new(world, seeds) }

	let(:world) { World.new(3, 3, Cell.new) }
	let(:seeds) { [[1, 2], [2, 2]] }

	it { is_expected.to respond_to(:world, :seeds) }

	it 'Initialized with a world and seed to populate the world' do
		expect(game.world).to eq world
		expect(game.seeds).to eq seeds
	end

	it 'Seeds the world correctly' do
		expect(game.world.grid[0][1]).to be_alive
		expect(game.world.grid[1][2]).to be_alive
		expect(game.world.grid[0][2]).to be_alive
		expect(game.world.grid[1][2]).to be_alive
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
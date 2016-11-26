require 'game'

describe Game do

	subject(:game) { described_class.new }

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
require 'world'

describe World do

	subject(:world) { described_class.new(3,3) }

	it { is_expected.to respond_to(:rows, :cols) }

	it 'World grid area should correspond to initialized arguments' do
		expect(world.cols).to eq 3
		expect(world.rows). to eq 3
	end

end
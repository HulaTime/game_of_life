require 'cell'

describe Cell do

  subject(:cell) { described_class.new }

  it { is_expected.to respond_to(:alive) }

  it 'Status defaults to being dead' do
    expect(cell.alive).to be false
  end

end

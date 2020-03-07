require 'player'

describe Player do

  subject(:dave) { Player.new('Dave') }
  subject(:mittens) { Player.new('Mittens') }


  it "returns name" do
    expect(subject.name).to eq 'Mittens'
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(dave.points).to eq described_class::DEFAULT_HP
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { dave.receive_damage }.to change { dave.points }.by(-10)
    end
  end

end

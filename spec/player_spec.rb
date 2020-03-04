require 'player'

describe Player do

subject(:gareth) { Player.new('Gareth') }

it "returns name" do
  expect(gareth.name).to eq 'Gareth'
end

end

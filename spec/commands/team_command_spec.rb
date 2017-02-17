require 'spec_helper'

RSpec.describe TeamCommand do
 describe '#fight' do
   it 'returns the correct winner' do
     result = TeamCommand.fight!(Fabricate(:surrey_raiders), Fabricate(:green_tippers))

     expect(result.winner.name).to eq("Surrey Raiders")
     expect(result.winner.score).to eq(91)
   end
 end
end

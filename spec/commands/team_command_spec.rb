require 'spec_helper'

RSpec.describe TeamCommand do
 describe '#fight' do
   it 'returns the correct winner' do
     expect(TeamCommand.fight!(Fabricate(:surrey_raiders), Fabricate(:green_tippers))).to eq( { winner: "Surrey Raiders", score: 91 })
   end
 end
end

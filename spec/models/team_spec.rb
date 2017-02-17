require 'spec_helper'

RSpec.describe Team do

  describe '#Surrey Raiders' do
    describe '#name' do
      it 'returns the initialized name' do
        expect(Fabricate(:surrey_raiders).name).to eq('Surrey Raiders')
      end
    end

    describe '#to_numbers' do
      it 'returns the numerical representation of the instance' do
        expect(Fabricate(:surrey_raiders).to_numbers).to eq([0,1,0,0,0,4,1])
      end
    end

    describe '#calculate' do
      it 'returns the percentage (represented as an integer) of the teams score' do
        expect(Fabricate(:surrey_raiders).calculate).to eq(91)
      end
    end
  end

  describe '#Green Tippers' do
    describe '#name' do
      it 'returns the initialized name' do
        expect(Fabricate(:green_tippers).name).to eq('Green Tippers')
      end
    end

    describe '#to_numbers' do
      it 'returns the numerical representation of the instance' do
        expect(Fabricate(:green_tippers).to_numbers).to eq([0,1,0,1,0,2,0])
      end
    end

    describe '#calculate' do
      it 'returns the percentage (represented as an integer) of the teams score' do
        expect(Fabricate(:green_tippers).calculate).to eq(11)
      end
    end
  end


end

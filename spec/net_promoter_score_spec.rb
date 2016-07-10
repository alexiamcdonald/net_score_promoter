require 'net_promoter_score'

RSpec.describe 'net_promoter_score' do

  let(:data) {[1,2,3,5,7,8,9,9,9,10]}

  describe '#green_data' do

    subject { green_data(data)}

    it 'prints the percentage for green data 9s and 10s' do
      expect(subject).to eq(40)
    end
  end

  describe '#red_data' do

    subject { red_data(data) }

    it 'prints the percentage for red data below 7' do
      expect(subject).to eq(40)
    end
  end

  describe '#net_score' do
    subject { net_score(data) }

    it 'gives the score for the net promoter score' do
      expect(subject).to eq(0)
    end
  end
end

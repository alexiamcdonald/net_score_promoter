require 'net_promoter_score'

RSpec.describe 'net_promoter_score' do

  let(:score) {[1,2,2,3,7,5,9,9,9,10]}

  describe '#collect_green' do

    subject { collect_green(score)}

    it 'collects all the green data' do
      expect(subject).to eq ([9, 9, 9, 10])
    end
  end

  describe '#green_score' do

    let(:green_data) {[9, 9, 9, 10]}

    subject {green_score(green_data, score)}

    it 'prints the percentage for greens' do
      expect(subject).to eq(40)
    end
  end

  describe '#collect_red' do

    subject { collect_red(score)}

    it 'collects all the red data' do
      expect(subject).to eq ([1, 2, 2, 3, 5])
    end
  end

  describe '#red_score' do

    let(:red_data) {[1, 2, 2, 3, 5]}

    subject {red_score(red_data, score)}

    it 'prints the percentage for reds' do
      expect(subject).to eq(50)
    end
  end

  describe '#nps' do
    subject {nps(score)}

    it 'gives the score for the nps' do
      expect(subject).to eq(-10)
    end
  end
end
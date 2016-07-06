require 'net_promoter_score'

RSpec.describe 'net_promoter_score' do

  let(:data) {[1,2,2,3,7,5,9,9,9,10]}

  describe '#green_data' do

    subject { green_data(data)}

    it 'collects all the green data' do
      expect(subject).to eq(40)
    end
  end

  describe '#red_data' do

    subject { red_data(data) }

    it 'prints the percentage for reds' do
      expect(subject).to eq(50)
    end
  end

#   describe '#nps' do
#     subject {nps(score)}
#
#     it 'gives the score for the nps' do
#       expect(subject).to eq(-10)
#     end
#   end
end

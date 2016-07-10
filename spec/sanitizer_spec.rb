require 'sanitizer'

RSpec.describe 'sanitizer' do

  let(:data) {[-5,-2,0,1,2,2,3,7,"a","b","%",9,9,9,10,11,12,"candy",true,false]}
  let(:expected_data) {[0,1,2,2,3,7,9,9,9,10]}

  describe '#sanitized_data' do
      subject { sanitized_data(data) }

    it 'returns the correct values' do

      expect(subject).to eq(expected_data)
    end

  end
end

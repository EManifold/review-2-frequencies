require 'frequency'

describe Frequency do
  describe '#update' do
    it "should return a frequency of 60 when the limits are 40 and 80" do
      expect(subject.update_frequency([60], 40, 80)).to eq [60]
    end

    # it "should return a frequency of 60 when the limits are 40 and 80" do
    #   expect(subject.update_frequency([120] 100, 150).to eq [120]
    # end
  end
end

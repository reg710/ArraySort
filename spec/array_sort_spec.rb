require 'array_sort'

describe Sorter do
    it "knows true is true" do
        expect(true).to eql(true)
    end

    it "returns an array" do
        sorter = Sorter.new
        result = sorter.arrange([2, 1])
        expect(result).to eql([1, 2])
    end


end
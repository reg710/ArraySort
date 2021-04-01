require 'array_sort'

describe Sorter do
    it "knows true is true" do
        expect(true).to eql(true)
    end

    it "returns an already sorted array unchanged" do
        sorter = Sorter.new
        result = sorter.arrange([1, 2])
        expect(result).to eql([1, 2])
    end

    it "sorts an array of 2" do
        sorter = Sorter.new
        result = sorter.arrange([2, 1])
        expect(result).to eql([1, 2])
    end

    it "sorts an array of 3" do
        sorter = Sorter.new
        result = sorter.arrange([2, 1, 3])
        expect(result).to eql([1, 2, 3])
    end

    it "sorts an array with negative numbers" do
        sorter = Sorter.new
        result = sorter.arrange([2, 1, -3])
        expect(result).to eql([-3, 1, 2])
    end

    it "sorts an array with decimals" do
        sorter = Sorter.new
        result = sorter.arrange([1.7, 1.5, 3])
        expect(result).to eql([1.5, 1.7, 3])
    end

    it "sorts an array with fractions" do
        sorter = Sorter.new
        result = sorter.arrange([10/4, 1, 100])
        expect(result).to eql([1, 10/4, 100])
    end

    it "sorts an array of all the same numbers" do
        sorter = Sorter.new
        result = sorter.arrange([100, 100, 100, 100])
        expect(result).to eql([100, 100, 100, 100])
    end
    

end
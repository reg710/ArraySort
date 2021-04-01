require 'array_sort'

describe Sorter do
    it "knows true is true" do
        expect(true).to eql(true)
    end
    
    it "can handle an empty array" do
        sorter = Sorter.new
        result = sorter.arrange([])
        expect(result).to eql([])
    end

    it "leaves an array of 1 unchanged" do
        sorter = Sorter.new
        result = sorter.arrange([2])
        expect(result).to eql([2])
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
    
    # I did not expect this to work but it does?
    it "sorts an array of characters" do
        sorter = Sorter.new
        result = sorter.arrange(["c", "b", "a"])
        expect(result).to eql(["a", "b", "c"])
    end

    # Also, why is this working?
    it "sorts an array of strings" do
        sorter = Sorter.new
        result = sorter.arrange(["cat", "bobsled", "anise"])
        expect(result).to eql(["anise", "bobsled", "cat"])
    end

    # JR explained it works because it is looking at the ASCII number
    # Also learned it sorts all caps then all lowercase, then by letter
    it "sorts an array of capitals and lowercase characters" do
        sorter = Sorter.new
        result = sorter.arrange(["a", "A", "C", "c", "B"])
        expect(result).to eql(["A", "B", "C", "a", "c"])
    end

end
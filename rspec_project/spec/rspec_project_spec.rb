require "rspec_project.rb"

describe "my_uniq" do

   let(:arr) { [1,1,2,3,3,4,5] }
   let(:arr2) {["dog", "dog", [1,1],[1,1], 3,3,4,"cat"]}

   before(:each) do
      expect_any_instance_of(Array).not_to receive(:uniq)
      # expect(arr).not_to receive(:uniq)
      # expect(arr2).not_to receive(:uniq)
      end

   # it "Is used on an array" do
   #    expect(self.is_a?(Array)).to eq(true)
   # end

   it "Does not return dups" do
      expect(arr2.my_uniq).to eq(["dog",[1,1], 3,4,"cat"])
   end

   it "Should not use Array#uniq" do
 
   end

   it "Maintains original order" do
      expect(arr.my_uniq).to eq([1,2,3,4,5])
   end
      
   it "Works with strings, arrays, and numeric elements" do
      expect(arr2.my_uniq).to eq(["dog",[1,1], 3,4,"cat"])
   end
   
end

=begin
   Self is an array?                       =>  self.is_a?(Array) == true
   no dups in return array                 =>  expect self.my_uniq == self.uniq 
   not use Array#uniq                      =>  expect any instance of array not to receive Array#uniq
   Original order is maintained            =>  expect [1,1,2,3,3,4,5].my_uniq to eq [1,2,3,4,5]
   Works with different types of elements  =>  expect ["dog", "dog", [1,1],[1,1], 3,3,4,"cat"].my_uniq 
                                               to eq  ["dog",[1,1], 3,4,"cat"]
=end


describe "#two_sum" do
    let(:arr) {[1, -3, 3, 4, -5, -33, 33, 16, 17]}

    it "Indices of numbers that sum to zero are returned" do
    
        expect(arr.two_sum).to eq([[1,2],[5,6]])

    end

    it "Puts the indices in the appropriate order" do
        (0...arr.two_sum.length - 1).each do |i| 
            expect(arr.two_sum[i][1] >  arr.two_sum[i][0]).to eq( true)
        end
        arr.two_sum.each_with_index do |ele,i| 
            next if i ==  arr.two_sum.length - 1
            expect(ele[0] <=  arr.two_sum[i+1][0]).to eq( true)
        end
    end
    
end


describe "#my_transpose" do
   let(:arr) {[[0,1,2], [3,4,5], [6,7,8]]}     #[[0,3,6], [1,4,7], [2,5,8]]

   it "Converts between rows and columns" do
      expect(arr.my_transpose).to eq([[0,3,6], [1,4,7], [2,5,8]])
   end

end


describe "stock_picker" do
    let(:arr) {[34,65,22,32,59,103,2,29]}

    it "sell day should be after buy day" do 
        expect(stock_picker(arr)[0] < stock_picker(arr)[1]).to eq(true)
    end

    it "returns the indices of the greatest trade" do

        expect(stock_picker(arr)).to eq([2,5])

    end


end
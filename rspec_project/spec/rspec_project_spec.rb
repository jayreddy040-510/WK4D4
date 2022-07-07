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
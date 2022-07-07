require "rspec_project.rb"

describe "my_uniq" do

end

=begin
   Self is an array?                       =>  self.is_a?(Array) == true
   no dups in return array                 =>  expect self.my_uniq == self.uniq 
   not use Array#uniq                      =>  expect any instance of array not to receive Array#uniq
   Original order is maintained            =>  expect [1,1,2,3,3,4,5].my_uniq to eq [1,2,3,4,5]
   Works with different types of elements  =>  expect ["dog", "dog", [1,1],[1,1], 3,3,4,"cat"].my_uniq 
                                               to eq  ["dog",[1,1], 3,4,"cat"]
=end
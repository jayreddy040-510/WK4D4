require "towers_of_hanoi.rb"

describe TowersOfHanoi do
    let(:toh) { TowersOfHanoi.new(4) }

    describe "#initialize" do
    
        it "should take a parameter num of number of pieces" do
            expect(toh).to_not raise_error
        end

        it "should populate towers array @towers with starting pieces" do
            expect(toh).instance_variable_get(:@towers)).to match_array([[4,3,2,1],[],[]])
        end
    end
    describe "#valid_move?" do
            it "should take a start tower and an end tower"
        context "if start tower is not empty" do
            it "should return true if end tower is empty or start tower top piece is smaller than end tower top piece"
        end

        context "if start tower is empty" do
            it "should return false" 
        end
    end

    describe "#move_piece" do
        it "should call valid_move?"
        it "move piece from start tower to end tower if valid move"
    end 

    describe "#win?"
        it "Should return true if tower[2] contains all pieces"
        it "should return false otherwise"
    end
    
    describe "#render"
        it "should display board in terminal"
    end

    describe "game"
        it "should print out board to terminal"

    end


end
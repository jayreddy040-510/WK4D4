class Array

    def my_uniq
        self.tally.keys
    end
    
    def two_sum
        pairs = []
        (0...self.length).each do |i| 
        (i+1...self.length).each{ |j| pairs << [i,j]}
        end
        pairs.select { |ele| self[ele[0]]+self[ele[1]] ==0 }
    end

end


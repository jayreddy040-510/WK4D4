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

    def my_transpose
        new_arr = Array.new(self.length) {Array.new(self.length, [])}
        (0...self.length).each do |i|
            (0...self.length).each do |j|
                
                new_arr[i][j] = self[j][i]
                
            end
        end
        new_arr
    end

end


def stock_picker(arr)
    pairs = []
    max_diff = [[arr[0],0],[arr[1],1]]
    (0...arr.length).each do |i| 
        (i+1...arr.length).each do |j| 
            pairs << [[arr[i],i],[arr[j],j]] if j > i 
        end
    end
    pairs.each {|ele| max_diff = ele if (ele[1][0] - ele[0][0]) > (max_diff[1][0] - max_diff[0][0])  }
    return [max_diff[0][1],max_diff[1][1]]

end


def find_outlier(integers)
    majority_even = false 
    odd_or_even = integers.count{ |num| num % 2 == 0}
    if odd_or_even == 1 
      majority_even = false
    else 
      majority_even = true
    end 
    
    if majority_even 
      integers.each do |check|
        if check % 2 != 0 
          return check
        end 
      end
    else 
      integers.each do |check|
        if check % 2  == 0 
          return check
        end
      end
    end
end 
      
find_outlier([0,1,2])
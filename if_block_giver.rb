irb(main):013* def some_numbers(arr_of_nums, &code_block)
irb(main):014*   arr_of_nums.each { |num| code_block.call(num) if block_given? }

irb(main):015> end
=> :some_numbers
irb(main):016> some_numbers(negativer_nums)
=> [-1, -2, -3]
irb(main):017* def some_numbers(arr_of_nums)
irb(main):018*   arr_of_nums.each { |num| yield num if block_given? }
irb(main):019> end
=> :some_numbers
irb(main):020> some_numbers(negativer_nums)
=> [-1, -2, -3]
irb(main):021> 

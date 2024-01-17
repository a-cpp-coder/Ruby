huy@pop-os ~ % irb
irb(main):001* def some_numbers(arr_of_nums, &code_block)
irb(main):002*   arr_of_nums.each { |num| code_block.call(num) }
irb(main):003> end
=> :some_numbers
irb(main):004> negativer_nums = [-1, -2, -3]
=> [-1, -2, -3]
irb(main):005> some_numbers(negativer_nums)
(irb):2:in `block in some_numbers': undefined method `call' for nil:NilClass (NoMethodError)
	from (irb):2:in `each'
	from (irb):2:in `some_numbers'
	from (irb):5:in `<main>'
	from /var/lib/gems/3.0.0/gems/irb-1.11.1/exe/irb:9:in `<top (required)>'
	from /usr/local/bin/irb:25:in `load'
	from /usr/local/bin/irb:25:in `<main>'
irb(main):006* def some_numbers(arr_of_nums)
irb(main):007*   arr_of_nums.each { |num| yield num }
irb(main):008> end
=> :some_numbers
irb(main):009> some_numbers(negativer_nums)
(irb):7:in `block in some_numbers': no block given (yield) (LocalJumpError)
	from (irb):7:in `each'
	from (irb):7:in `some_numbers'
	from (irb):9:in `<main>'
	from /var/lib/gems/3.0.0/gems/irb-1.11.1/exe/irb:9:in `<top (required)>'
	from /usr/local/bin/irb:25:in `load'
	from /usr/local/bin/irb:25:in `<main>'
irb(main):010> 


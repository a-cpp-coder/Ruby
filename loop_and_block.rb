irb(main):004* 20.times do
    irb(main):005*   p "loop"
    irb(main):006> end
    "loop"
    "loop"
    "loop"
    "loop"
    "loop"
    "loop"
    "loop"
    "loop"
    "loop"
    "loop"
    "loop"
    "loop"
    "loop"
    "loop"
    "loop"
    "loop"
    "loop"
    "loop"
    "loop"
    "loop"
    => 20
    irb(main):007* 1.upto(5) do
    irb(main):008*   p "loop"
    irb(main):009> end
    "loop"
    "loop"
    "loop"
    "loop"
    "loop"
    => 1
    irb(main):010* 1.upto(5) do
    irb(main):011*   puts "loop"
    irb(main):012> end
    loop
    loop
    loop
    loop
    loop
    => 1
    irb(main):013> 1.upto(10) { |n| puts n }
    1
    2
    3
    4
    5
    6
    7
    8
    9
    10
    => 1
    irb(main):014> 5.upto(10) { |n| puts n }
    5
    6
    7
    8
    9
    10
    => 5
    irb(main):015> 10.downto(5) {|n| puts n}
    10
    9
    8
    7
    6
    5
    => 10
    irb(main):016> num = 5
    => 5
    irb(main):017* while num <= 50
    irb(main):018*   puts "Not greater than or equal 50 yet"
    irb(main):019*   num++
    irb(main):020> end
    /var/lib/gems/3.0.0/gems/irb-1.11.1/lib/irb/workspace.rb:117:in `eval': (irb):20: syntax error, unexpected `end' (SyntaxError)
        from /var/lib/gems/3.0.0/gems/irb-1.11.1/exe/irb:9:in `<top (required)>'
        from /usr/local/bin/irb:25:in `load'
        from /usr/local/bin/irb:25:in `<main>'
    irb(main):021* while num <= 50
    irb(main):022*   puts "Not greater than or equal 50 yet"
    irb(main):023*   num += 1
    irb(main):024> end
    Not greater than or equal 50 yet
    Not greater than or equal 50 yet
    Not greater than or equal 50 yet
    Not greater than or equal 50 yet
    Not greater than or equal 50 yet
    Not greater than or equal 50 yet
    Not greater than or equal 50 yet
    Not greater than or equal 50 yet
    Not greater than or equal 50 yet
    Not greater than or equal 50 yet
    Not greater than or equal 50 yet
    Not greater than or equal 50 yet
    Not greater than or equal 50 yet
    Not greater than or equal 50 yet
    Not greater than or equal 50 yet
    Not greater than or equal 50 yet
    Not greater than or equal 50 yet
    Not greater than or equal 50 yet
    Not greater than or equal 50 yet
    Not greater than or equal 50 yet
    Not greater than or equal 50 yet
    Not greater than or equal 50 yet
    Not greater than or equal 50 yet
    Not greater than or equal 50 yet
    Not greater than or equal 50 yet
    Not greater than or equal 50 yet
    Not greater than or equal 50 yet
    Not greater than or equal 50 yet
    Not greater than or equal 50 yet
    Not greater than or equal 50 yet
    Not greater than or equal 50 yet
    Not greater than or equal 50 yet
    Not greater than or equal 50 yet
    Not greater than or equal 50 yet
    Not greater than or equal 50 yet
    Not greater than or equal 50 yet
    Not greater than or equal 50 yet
    Not greater than or equal 50 yet
    Not greater than or equal 50 yet
    Not greater than or equal 50 yet
    Not greater than or equal 50 yet
    Not greater than or equal 50 yet
    Not greater than or equal 50 yet
    Not greater than or equal 50 yet
    Not greater than or equal 50 yet
    Not greater than or equal 50 yet
    => nil
    irb(main):025* while num <= 50
    irb(main):026*   puts num
    irb(main):027*   num += 1
    irb(main):028> end
    => nil
    irb(main):029> num = 5
    => 5
    irb(main):030* while num <= 50
    irb(main):031*   puts num
    irb(main):032*   num += 1
    irb(main):033> end
    5
    6
    7
    8
    9
    10
    11
    12
    13
    14
    15
    16
    17
    18
    19
    20
    21
    22
    23
    24
    25
    26
    27
    28
    29
    30
    31
    32
    33
    34
    35
    36
    37
    38
    39
    40
    41
    42
    43
    44
    45
    46
    47
    48
    49
    50
    => nil
    irb(main):034> num = 5
    => 5
    irb(main):035* until num > 50
    irb(main):036*   puts nums
    irb(main):037*   nums += 1
    irb(main):038> end
    (irb):36:in `<main>': undefined local variable or method `nums' for main:Object (NameError)
    Did you mean?  num
        from /var/lib/gems/3.0.0/gems/irb-1.11.1/exe/irb:9:in `<top (required)>'
        from /usr/local/bin/irb:25:in `load'
        from /usr/local/bin/irb:25:in `<main>'
    irb(main):039* until num > 50
    irb(main):040*   puts num
    irb(main):041*   num += 1
    irb(main):042> end
    5
    6
    7
    8
    9
    10
    11
    12
    13
    14
    15
    16
    17
    18
    19
    20
    21
    22
    23
    24
    25
    26
    27
    28
    29
    30
    31
    32
    33
    34
    35
    36
    37
    38
    39
    40
    41
    42
    43
    44
    45
    46
    47
    48
    49
    50
    => nil
    irb(main):043> nums = [1, 2, 3, 4, 5]
    => [1, 2, 3, 4, 5]
    irb(main):044> nums.each {|n| puts nums}
    1
    2
    3
    4
    5
    1
    2
    3
    4
    5
    1
    2
    3
    4
    5
    1
    2
    3
    4
    5
    1
    2
    3
    4
    5
    => [1, 2, 3, 4, 5]
    irb(main):045> nums.each {|n| puts num}
    51
    51
    51
    51
    51
    => [1, 2, 3, 4, 5]
    irb(main):046> nums.each {|n| puts n}
    1
    2
    3
    4
    5
    => [1, 2, 3, 4, 5]
    irb(main):047* nums.each do |num|
    irb(main):048*   puts num
    irb(main):049> end
    1
    2
    3
    4
    5
    => [1, 2, 3, 4, 5]
    irb(main):050> negative_nums = [-1, -2, -3, -4, -5]
    => [-1, -2, -3, -4, -5]
    irb(main):051> positive_nums = negative_nums.map {|num| num.abs}
    => [1, 2, 3, 4, 5]
    irb(main):052* def some_number(arr_of_nums, &code_block)
    irb(main):053*   arr_of_nums.each { |num| code_block.call(num) }
    irb(main):054> end
    => :some_number
    irb(main):055* some_number(negative_nums)  do |num|
    irb(main):056*   puts num.abs
    irb(main):057> end
    1
    2
    3
    4
    5
    => [-1, -2, -3, -4, -5]
    irb(main):058> some_number(negative_nums) {|num| puts num.abs}
    1
    2
    3
    4
    5
    => [-1, -2, -3, -4, -5]
    irb(main):059* def some_numbers(arr_of_nums)
    irb(main):060*   arr_of_nums.each { |num| yield num }
    irb(main):061> end
    => :some_numbers
    irb(main):062> some_numbers(negative_nums) { |num| puts num.abs }
    1
    2
    3
    4
    5
    => [-1, -2, -3, -4, -5]
    irb(main):063> print_capitalize = Proc.new { |name| put name.capitalize }
    => #<Proc:0x0000625245660db0 (irb):63>
    irb(main):064> print_capitalize
    => #<Proc:0x0000625245660db0 (irb):63>
    irb(main):065* print_capitalize.call("Huy"
    irb(main):066> )
    (irb):63:in `block in <top (required)>': undefined method `put' for main:Object (NoMethodError)
    Did you mean?  puts
                   putc
        from (irb):65:in `<main>'
        from /var/lib/gems/3.0.0/gems/irb-1.11.1/exe/irb:9:in `<top (required)>'
        from /usr/local/bin/irb:25:in `load'
        from /usr/local/bin/irb:25:in `<main>'
    irb(main):067> print_capitalize.call("Huy")
    (irb):63:in `block in <top (required)>': undefined method `put' for main:Object (NoMethodError)
    Did you mean?  puts
                   putc
        from (irb):67:in `<main>'
        from /var/lib/gems/3.0.0/gems/irb-1.11.1/exe/irb:9:in `<top (required)>'
        from /usr/local/bin/irb:25:in `load'
        from /usr/local/bin/irb:25:in `<main>'
    irb(main):068> print_capitalize = Proc.new { |name| puts name.capitalize }
    => #<Proc:0x000062524550b6b8 (irb):68>
    irb(main):069> print_capitalize("Huy")
    (irb):69:in `<main>': undefined method `print_capitalize' for main:Object (NoMethodError)
        from /var/lib/gems/3.0.0/gems/irb-1.11.1/exe/irb:9:in `<top (required)>'
        from /usr/local/bin/irb:25:in `load'
        from /usr/local/bin/irb:25:in `<main>'
    irb(main):070> print_capitalize.call("Huy")
    Huy
    => nil
    irb(main):071> ["Huy", "Truong"].each &print_capitalize
    Huy
    Truong
    => ["Huy", "Truong"]
    irb(main):072> ["Huy", "Truong"].map {|name| name.capitalize}
    => ["Huy", "Truong"]
    irb(main):073> ["huy", "truong"].map(&:capitalize)
    => ["Huy", "Truong"]
    irb(main):074> 
    
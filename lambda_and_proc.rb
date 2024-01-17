irb(main):021> lambda { puts "Hello" }
=> #<Proc:0x00005d4c9fc73988 (irb):21 (lambda)>
irb(main):022> l = lambda { puts "Hello" }
=> #<Proc:0x00005d4c9fe851e0 (irb):22 (lambda)>
irb(main):023> Proc.new { puts "Ha" }
=> #<Proc:0x00005d4c9ff1f5b0 (irb):23>
irb(main):024> p = _
=> #<Proc:0x00005d4c9ff1f5b0 (irb):23>
irb(main):025> p.call
Ha
=> nil
irb(main):026> l.call
Hello
=> nil
irb(main):027> stabby_lambda.call
(irb):27:in `<main>': undefined local variable or method `stabby_lambda' for main:Object (NameError)
	from /var/lib/gems/3.0.0/gems/irb-1.11.1/exe/irb:9:in `<top (required)>'
	from /usr/local/bin/irb:25:in `load'
	from /usr/local/bin/irb:25:in `<main>'
irb(main):028> stabby_lambda = -> {puts "Standy"}
=> #<Proc:0x00005d4c9f68c1a0 (irb):28 (lambda)>
irb(main):029> stabby_lambda.call
Standy
=> nil
irb(main):030> greet_person = -> { puts "Hello, #{name}"}
=> #<Proc:0x00005d4c9fdb5580 (irb):30 (lambda)>
irb(main):031> greet_person("Huy")
(irb):31:in `<main>': undefined method `greet_person' for main:Object (NoMethodError)
	from /var/lib/gems/3.0.0/gems/irb-1.11.1/exe/irb:9:in `<top (required)>'
	from /usr/local/bin/irb:25:in `load'
	from /usr/local/bin/irb:25:in `<main>'
irb(main):032> greet_person.call("Huy")
(irb):30:in `block in <top (required)>': wrong number of arguments (given 1, expected 0) (ArgumentError)
	from (irb):32:in `<main>'
	from /var/lib/gems/3.0.0/gems/irb-1.11.1/exe/irb:9:in `<top (required)>'
	from /usr/local/bin/irb:25:in `load'
	from /usr/local/bin/irb:25:in `<main>'
irb(main):033> greet_person = ->(name) { puts "Hello, #{name}"}
=> #<Proc:0x00005d4c9feadfa0 (irb):33 (lambda)>
irb(main):034> greet_person.call("Huy")
Hello, Huy
=> nil
irb(main):035> bid_farewell = Proc.new {|name| puts "goodbye, #{name}"}
=> #<Proc:0x00005d4c9fc08f70 (irb):35>
irb(main):036> bid_farewell.call("Huy")
goodbye, Huy
=> nil
irb(main):037> 


# other difference
irb(main):039* def lambda_return_example
irb(main):040*   puts "Inside method body"
irb(main):041*   l = -> { return 5 }
irb(main):042*   l.call
irb(main):043*   puts "After lambda call"
irb(main):044> end
=> :lambda_return_example
irb(main):045* def proc_return_example
irb(main):046*   puts "Inside method body"
irb(main):047*   p = Proc.new { return 5 }
irb(main):048*   p.call
irb(main):049*   puts "After proc call"
irb(main):050> end
=> :proc_return_example
irb(main):051* def proc_return_example
irb(main):052*   puts "Inside method body"
irb(main):053*   p = Proc.new { return 5 }
irb(main):054*   p.call
irb(main):055*   puts "After proc call"
irb(main):056> end
=> :proc_return_example
irb(main):057> lambda_return_example
Inside method body
After lambda call
=> nil
irb(main):058> proc_return_example
Inside method body
=> 5
irb(main):059> 
# proc go out of the Context(body of the calling method)
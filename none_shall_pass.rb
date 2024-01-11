EMAIL = "a" #"Homer@example.com"
PASSWORD = "1234"
PASSWORD_VAULT = {aws: {user_name: "Huy", password: "1234"}}

puts "Welcome to None Shall Pass - A Password Manager"
puts "Please sign  in to continue"
print "Please enter the email: "

user_email = gets.chomp
# p user_email

if user_email == EMAIL
# excute some code
  print "Enter password: "
  user_password = gets.chomp
else
  puts "You enter wrong email"
  exit
end

unless user_password != PASSWORD
  puts "Hello, #{user_email}"
  puts "What would you like to do ?"
  puts "1. Add new service credentials"
  puts "2. Retrieve an existing serivices credentials"
  puts "3. Exit"
  user_select = gets.chomp
else  # should not but can
  puts "Invalid password"
  exit
end

case user_select
when "1"
  puts "this will create a new service credenntials"
  print "Enter the name of the service: "
  new_service = gets.chomp
  PASSWORD_VAULT[new_service] = {}
  p PASSWORD_VAULT

  print "Please enter the username for this new service: "
  new_service_username = gets.chomp
  PASSWORD_VAULT[new_service]["user_name"] = new_service_username
  p PASSWORD_VAULT

  print "Please enter the password for this new service: "
  new_service_password = gets.chomp
  PASSWORD_VAULT[new_service]["password"] = new_service_password
  p PASSWORD_VAULT

when "2"
  puts "this will retrieve existing credentials"
  print "Please enter the name of the service you wish to access credential for: "
  requested_service_name = gets.chomp
  credenntials = PASSWORD_VAULT[requested_service_name.to_sym] # from a string to a symbol like 
  
  puts "Here are the credentials for #{requested_service_name}"
  credenntials.each do |key, value|
    puts "#{key}: #{value}"
  end
else
  puts "Exiting the program. Goodbye" 
  exit
  
end

EMAIL = "a" #"Homer@example.com"
PASSWORD = "1234"
PASSWORD_VAULT = {aws: {user_name: "Huy", password: "1234"}}

def welcome_messge
  puts "Welcome to None Shall Pass - A Password Manager"
end

def prompt_user_for_email
  puts "Please sign  in to continue"
  print "Please enter the email: "
  # user_email = gets.chomp
  gets.chomp # is enough
end

def verify_user_email(user_email)
  if user_email != EMAIL
    puts "Invalid email"
    exit
  end
end

def prompt_user_for_password
  print "Enter password: "
  gets.chomp
end

def verify_user_password(user_password)
  if user_password != PASSWORD
    puts "Invalid password"
    exit
  end
end

def greet_user(user_email)
  puts "Hello, #{user_email}"
  puts "What would you like to do ?"
end

def menu_options
  puts "1. Add new service credentials"
  puts "2. Retrieve an existing serivices credentials"
  puts "3. Exit"
end

def get_user_menu_selection
  gets.chomp
end

def handle_user_selection(user_select)
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

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
    new_service = set_new_service_name
    set_username_for(new_service)
    set_password_for(new_service)
    credential = retrieve_service_credential_for(new_service)
    display_service_credential(new_service, credential)

  when "2"
    requested_service_name = retrieve_service_name
    credential = retrieve_service_credential_for(requested_service_name)
    display_service_credential(requested_service_name, credential)
  else
    exit_program
  end
end

def set_new_service_name
  puts "this will create a new service credenntials"
  print "Enter the name of the service: "
  new_service = gets.chomp
  PASSWORD_VAULT[new_service.to_sym] = {}
  new_service
end  

def set_username_for(service)
  print "Please enter the username for this new service: "
  new_service_username = gets.chomp
  PASSWORD_VAULT[service.to_sym][:user_name] = new_service_username
end

def set_password_for(service)
  print "Please enter the password for this new service: "
  new_service_password = gets.chomp
  PASSWORD_VAULT[service.to_sym][:password] = new_service_password
end

def retrieve_service_name
  puts "this will retrieve existing credentials"
  print "Please enter the name of the service you wish to access credential for: "
  gets.chomp
end

def retrieve_service_credential_for(service)
  PASSWORD_VAULT[service.to_sym]
end

def display_service_credential(service, credential)
  puts "Here are the credentials for #{service}"
  credential.each do |key, value|
    puts "#{key}: #{value}"
  end
end

def exit_program
  puts "Exiting the program. Goodbye" 
  exit
end

welcome_messge
user_email = prompt_user_for_email
verify_user_email(user_email)
user_password = prompt_user_for_password
verify_user_password(user_password)
greet_user(user_email)

# to keep interacting
loop do
  menu_options
  user_selection = get_user_menu_selection
  handle_user_selection(user_selection)
end


require_relative("contact.rb")

class CRM

	attr_accessor :name #allows you to read and write an instance variable 

	def self.run(name)
		my_crm = CRM.new(name)
		my_crm.main_menu
	end

	def initialize(name, contacts)
		@name = name 

	end


	def print_main_menu
 	puts "[1] Add a contact"
 	puts "[2] Modify a contact"
 	puts "[3] Display all contacts"
 	puts "[4] Display al attribute"
 	puts "[5] Delete a contact"
 	puts "[6] Exit" 
	end

	def choose_option(choice)
		case choice 
	  	when 1 then add_contact
	  	when 2 then edit_contact
	  	when 3 then display_contact
	  	when 4 then display_attribute
	  	when 5 then delete_contact
	  	when 6 
	  		puts "Goodbye"
	  		exit
	  	else
			puts "I´m sorry Fernando, I´m afraid this option does not exist!"
		end
	end 

	def main_menu
		puts "Welcome to #{@name}"
	   while true
		print_main_menu
		
		print "Select an option:"
		input = gets.chomp.to_i

		# return if input == 6

		choose_option(input)
	   end 
	end

	def add_contact
		puts "Adding a Contact"

		print "First name: "
		first_name = gets.chomp

		print "Last name: "
		last_name = gets.chomp

		print "Email: "
		email = gets.chomp

		print "Notes: "
		notes = gets.chomp

		contact = Contact.new(first_name, last_name, email, notes)
		@contacts << contact
	end

	def edit_contact
		puts "Editing a Contact"
	end

	def display_contact
		@contacts.each do |contact|
			puts "#{first_name} #{last_name}"
		end
end


# CRM.run
# bitmaker_crm = CRM.new("Bitmaker CRM")
# personal_crm = CRM.new("Personal CRM")


require_relative("rolodex.rb")

class CRM
	attr_reader :name #allows you to read and write an instance variable 

	def self.run(name)
		my_crm = CRM.new(name)
		my_crm.main_menu
	end

	def initialize(name)
		@name = name 
		@rolodex = Rolodex.new
	end


	def print_main_menu
 	puts "[1] Add a contact"
 	puts "[2] Modify a contact"
 	puts "[3] Display a contact"
 	puts "[4] Display all contacts"
 	puts "[5] Display an attribute"
 	puts "[6] Delete a contact"
 	puts "[7] Exit" 
	end

	def choose_option(choice)
		case choice 
	  	when 1 then add_contact
	  	when 2 then edit_contact
	  	when 3 then display_contact
	  	when 4 then display_all_contacts
	  	when 5 then display_attr
	  	when 6 then delete_cont
	  	when 7 
	  		puts "Goodbye"
	  		exit
	  	else
			puts "I´m sorry Fernando, I´m afraid this option does not exist!"
		end
	end 

	def main_menu
		puts "Welcome to #{@name}"
	   while true #this allows to set a direction for this method 
		print_main_menu
		
		print "Select an option:"
		input = gets.chomp.to_i
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

		@rolodex.add_contact(first_name, last_name, email, notes)
	end

	def edit_contact
		puts "Editing a Contact"
	end

	def display_contact
		print "Which contact id would you like to see?"
		id = gets.chomp
		@rolodex.find_contact(id)
	end


	def display_all_contacts
		@rolodex.all.each do |contact|
			puts "#{contact.first_name} #{contact.last_name}"
		end
	end

	def display_attr
		puts "Enter an attribute (name, email, notes)"
		attribute = gets.chomp
		@rolodex.display_info_by_attribute(attribute)
	end 

	def delete_cont
		
	end
end

CRM.run("Fernando CRM")

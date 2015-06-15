require_relative("contact.rb")

class Rolodex
	@@id = 1000

	def initialize
		@contacts = []
	end

	def add_contact(first_name, last_name, email, notes)
		contact = Contact.new(@@id, first_name, last_name, email, notes)		
		@@id += 1

		@contacts << contact
	end

	def display_info_by_attribute(attribute)
		case attribute
		when "name" then
			@contacts.each do |contact|
				puts "#{contact.first_name} #{contact.last_name}"
			end
		when "email" then
			@contacts.each do |contact|
				puts "#{contact.email}"
			end
		when "notes" then
			@contacts.each do |contact|
				puts "#{contact.notes}"
			end
		end
	end 

	def find_contact(id)
		@contacts.each do |contact|
			if contact.id.to_i == id.to_i
			 puts "#{contact.one_contact}"
			else 
			  puts "No contact with this id"
			end
		end
	end


	def all
		@contacts
	end 
end
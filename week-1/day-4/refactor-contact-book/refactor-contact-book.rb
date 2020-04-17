class Contact
	attr_accessor :name
	attr_accessor :phone_number

	def initialize(name, phone_number)
		@name = name
		@phone_number = phone_number
	end
end

class ContactBook
	@@contacts = [Contact.new("Ron","1"), Contact.new("Hermione","2")]

	def add_contact
		print "Write name:"
		name = gets.chomp
		print "Write phone:"
		phone = gets.chomp

		if find_contact(name) > -1
			p "Contact exists!"
		else
			@@contacts << Contact.new(name, phone) 
			p "Contact added"
		end
	end

	def update_contact
		print "Write name:"
		name = gets.chomp
		index_contact = find_contact(name)

		if index_contact > -1
			print "Write phone:"
			phone = gets.chomp
			@@contacts[index_contact].phone_number = phone
			p "Contact updated"
		else
			p "Contact doesn't exists!"
		end
	end

	def display_contacts
		p "Contacts:"
		p "---------"
		@@contacts.each { |contact| p " - Name: #{contact.name}  -  Phone: #{contact.phone_number}"}
	end

	def delete_contact
		print "Write name:"
		name = gets.chomp
		index_contact = find_contact(name)

		if index_contact > -1
			@@contacts.delete_at(index_contact)
			p "Contact deleted"
		else
			p "Contact doesn't exists!"
		end
	end

	def find_contact(name)
		@@contacts.each_with_index { |contact, index| return index if name.downcase == contact.name.downcase }
		return -1
	end
end

# test

contact_book = ContactBook.new
while true
	print "What would you like to do?\n"\
	"-- Type 'add' to add a contact.\n"\
	"-- Type 'update' to update a contact.\n"\
	"-- Type 'display' to display all contacts.\n"\
	"-- Type 'delete' to delete a contact.\n"\
	"-- Type 'exit' to leave.\n"\
	"> "

	option = gets.chomp

	case option
	when "add"
		contact_book.add_contact
	when "update"
		contact_book.update_contact
	when "display"
		contact_book.display_contacts
	when "delete"
		contact_book.delete_contact
	when "exit"
		p "Thanks for use this aplication :3"
		exit(0)
	else
		p "Please, choose a valid option"
	end
	print "\n\n"
end
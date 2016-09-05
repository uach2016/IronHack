class ContactsController < ApplicationController
  def index
 	@contacts = Contact.all.order("name ASC")
  end

  	def new
  	end

	def create
	contact = Contact.new(
      :name => params[:contact][:name],
      :address => params[:contact][:address],
      :phone_number => params[:contact][:phone_number],
      :email => params[:contact][:email])


	
   	contact.save
  	redirect_to("/contacts")

	end

	def show
		id = params[:id]
		@contact = Contact.find_by(id: id)
	end
	
	def favorite_contacts
   
		render 'favoritescontacts'
	end


	def make_favorite
		id = params[:id]
		contact = Contact.find_by(id: id)
		contact.favorite = true
		contact.save

		redirect_to("/contacts")
	end

	def search
		@letter = params[:letter]
		@contacts = Contact.all.order("name ASC")
	end
end

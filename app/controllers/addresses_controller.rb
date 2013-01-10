class AddressesController < ApplicationController
	def new
		@person = Person.find(params[:person_id])
		@address = @person.addresses.build
	end
	
	def create
		@person = Person.find(params[:person_id])
		@address = @person.addresses.build(params[:address])
		if @address.save 
			redirect_to @person, notice: "Woohoo added the hizzy"
		else
			render :new
		end
	end
end

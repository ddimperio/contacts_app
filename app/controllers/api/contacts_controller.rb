class Api::ContactsController < ApplicationController

  def index
    @contacts = Contact.all
    render "index.json.jbuilder"
  end

  def show
    @contact = Contact.find_by(id: params[:id])
    render = "show.json.jbuilder"
  end

  def create
    @contact = Contact.new(
      first_name: params["input_first_name"],
      middle_name: params["input_middle_name"],
      last_name: params["input_last_name"],
      phone_number: params["input_phone_number"],
      email: params["input_email"],
      bio: params["input_bio"]
      )
    @contact.save
    render "show.json.jbuilder"
  end

  def update
    @contact = Contact.find_by(id: params[:id]) 
    @contact.first_name = params["input_first_name"] || @contact.first_name
    @contact.middle_name = params["input_middle_name"] || @contact.middle_name
    @contact.last_name = params["input_last_name"] || @contact.last_name
    @contact.phone_number = params["input_phone_number"] || @contact.phone_number
    @contact.email = params["input_email"] || @contact.email
    @contact.bio = params["input_bio"] || @contact.bio
    @contact.save
    render "show.json.jbuilder"
  end

  def destroy
    @contact = Contact.find_by(id: params[:id])
    @contact.destroy
    render json: {message: "Contact has been deleted."}
  end
end
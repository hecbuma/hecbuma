class ContactsController < ApplicationController

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      status = :created
      response = @contact
    else
      status = :unprocessable_entity
      response = {errors: @contact.errors}
    end

    respond_to do |format|
      format.json { render json: response, status: status }
    end
  end

  private
  def contact_params
    params[:contact].permit(:name, :email, :message, :iamabot)
  end
end

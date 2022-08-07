class EmailsController < ApplicationController

  def index
    @contact = Contact.find(params[:contact_id])
    @emails = Email.all
    @email = Email.new
  end

  def new
    @contact = Contact.find(params[:contact_id])
    @email = Email.new
  end
  
  def edit
    @contact = Contact.find(params[:contact_id])
    @email = @contact.emails.find(params[:id])
  end

  def create
    @contact = Contact.find(params[:contact_id])
    @email = @contact.emails.create(email_params)

    respond_to do |format|
      if @email.save
        #format.js
        format.html { redirect_to contact_path(@contact)}
        format.json { render :show, status: :created, location: @contact}
      else
        format.html { render 'new' }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @contact = Contact.find(params[:contact_id])
    @email = @contact.emails.find(params[:id])

    if @email.update(email_params)
      redirect_to contact_path(@contact), notice: "Saved!"
    else
      render 'edit'
    end
  end

  def destroy
    @contact = Contact.find(params[:contact_id])
    @email = @contact.emails.find(params[:id])
    @email.destroy
    redirect_to contact_path(@contact)
  end

  private
    def email_params
      params.require(:email).permit(:email_address, :comment)
    end  
end
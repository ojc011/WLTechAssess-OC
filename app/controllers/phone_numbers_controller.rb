class PhoneNumbersController < ApplicationController  
  
  def index
    @contact = Contact.find(params[:contact_id])
    @phone_numbers = PhoneNumber.all
    @phone_number = PhoneNumber.new
  end
  
  def new
    @contact = Contact.find(params[:contact_id])
    @phone_number = PhoneNumber.new
  end
  
  def edit
    @contact = Contact.find(params[:contact_id])
    @phone_number = @contact.phone_numbers.find(params[:id])
  end

  def create
    @contact = Contact.find(params[:contact_id])
    @phone_number = @contact.phone_numbers.create(phone_number_params)

    respond_to do |format|
      if @phone_number.save
        #format.js
        format.html { redirect_to contact_path(@contact) }
        format.json { render :show, status: :created, location: @contact }
      else
        format.html { render 'new' }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
  end
end

  def update
    @contact = Contact.find(params[:contact_id])
    @phone_number = @contact.phone_numbers.find(params[:id])

    if @phone_number.update(phone_number_params)
      redirect_to contact_path(@contact), notice: "Saved!"
    else
      render 'edit'
    end
  end

  def destroy
    @contact = Contact.find(params[:contact_id])
    @phone_number = @contact.phone_numbers.find(params[:id])
    @phone_number.destroy
    redirect_to contact_path(@contact)
    end

  private
    def phone_number_params
      params.require(:phone_number).permit(:number, :comment)
    end
end
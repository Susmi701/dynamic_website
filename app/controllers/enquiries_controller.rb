class EnquiriesController < ApplicationController
  def new
    @enquiry=Enquiry.new
  end

  def create
    @enquiry = Enquiry.new(message_params)
    if @enquiry.save
      flash[:notice] = "Message was sent successfully"
      redirect_to new_enquiry_path
    else
      flash[:notice] = "Error occured while senting message"
      render :new, status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:enquiry).permit(:name, :email,:country, :message)
  end

end

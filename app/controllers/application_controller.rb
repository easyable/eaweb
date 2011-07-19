class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def contact
    @title = "Contact Us"
    
    if request.post?
        Mailer.interest(params[:contact]).deliver
        flash[:notice] = "Your message has been sent, you should hear from us shortly!"
        redirect_to :action =>'contact'
    end
  end
end

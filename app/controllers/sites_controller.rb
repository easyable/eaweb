class SitesController < ApplicationController
  def home
    @title = "Home"
  end

  def services
    @title = "Services"
  end

  def portfolio
  end

  def about
    @title = " About"
  end

  def contact
    @title = "Contact"
    def contact
      @title = "Contact Us"

      if request.post?
          Mailer.interest(params[:contact]).deliver
          flash[:notice] = "Your message has been sent, you should hear from us shortly!"
          redirect_to :action =>'contact'
      end
    end  
  end

end

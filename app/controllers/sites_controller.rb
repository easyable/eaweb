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
  end

end

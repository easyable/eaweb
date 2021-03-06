class Notifier < ActionMailer::Base
  default :from => "easyable01@gmail.com"
  
  def interest(contact)
    @name = contact[:name]
    @email = contact[:email]
    @company = contact[:company]
    @subject = contact[:subject]
    @message = contact[:message] 
    mail(:to => "Gene Awot <easyable01@gmail.com", :subject => "Message from website contact form")
  end
end

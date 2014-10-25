class Notifier < ActionMailer::Base
  default from: "authlogictest@gmail.com"
  
  def activity_email(user)
      @user = user
      mail(to: @user.email, subject: "Please acitive you account")
  end
end

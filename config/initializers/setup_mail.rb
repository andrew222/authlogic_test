ActionMailer::Base.smtp_settings = {  
   :address              => "smtp.gmail.com",  
   :port                 => 587,  
   :domain               => "whateverdomain.com",  
   :user_name            => "authlogictest@gmail.com",  
   :password             => "yy852456",  
   :authentication       => "plain",  
   :enable_starttls_auto => true  
 } 

class ApplicationMailer < ActionMailer::Base
  default from: "bastien@barbe.com"
  default to: "bastien.babar@gmail.com"
  layout 'mailer'
end

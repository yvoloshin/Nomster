class NotificationMailer < ActionMailer::Base
  default from: "no-reply@nomsterapp.com"

  def comment_added
  	mail(to: "yvoloshin01@gmail.com", subject: 'Added Comment')
  end

end

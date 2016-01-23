class UserMailer < ActionMailer::Base
  default :from => "no-reply@android-quiz-app.com"

  def attendee_confirmation(user)
    @user = user
    @url = "http://localhost:8000"
    mail(:to => user.email, :subject => "Registered")
  end
end

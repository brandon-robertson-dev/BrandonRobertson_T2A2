# Preview all emails at http://localhost:3000/rails/mailers/notifications_mailer
class NotificationsMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/notifications_mailer/signup
  def signup
    NotificationsMailer.signup
  end

  # Preview this email at http://localhost:3000/rails/mailers/notifications_mailer/forgot_password
  def forgot_password
    NotificationsMailer.forgot_password
  end

  # Preview this email at http://localhost:3000/rails/mailers/notifications_mailer/transaction_complete
  def transaction_complete
    NotificationsMailer.transaction_complete
  end

end

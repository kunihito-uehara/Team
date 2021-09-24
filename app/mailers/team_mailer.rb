class TeamMailer < ApplicationMailer
  default from: 'from@example.com'

  def team_mail(user)
    mail to: user.email, subject: I18n.t('views.messages.owner_change')
  end
end
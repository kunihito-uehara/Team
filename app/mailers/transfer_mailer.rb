class TransferMailer < ApplicationMailer
  default from: 'from@example.com'

  def  transfer_mail(user)
    # mail to: team.email, subject: I18n.t('views.messages.owner_change')
    mail to: user.email, subject: I18n.t('views.messages.owner_change')
  end
end
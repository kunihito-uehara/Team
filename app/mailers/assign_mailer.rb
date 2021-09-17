class AssignMailer < ApplicationMailer
  default from: 'from@example.com'

  def assign_mail(email, password)
    @email = email
    @password = password
    mail to: @email, subject: I18n.t('views.messages.complete_registration')
  end
  
  def agenda_destroy_mail(agenda)
    emails = agenda.team.all_member_emails
    @agenda = agenda
    mail to: emails, subject: "アジェンダ削除のお知らせ"
  end
end
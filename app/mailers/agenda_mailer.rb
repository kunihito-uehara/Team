class AgendaDestroyMailer < ApplicationMailer
  def agenda_destroy_mail(email)
    mail to: email, subject: "アジェンダ削除のお知らせ"
  end

  def self.deliver_agenda_destroy_mail(emails)
    self.agenda_destroy_emails(emails).map(&:deliver)
  end

  def self.agenda_destroy_emails(emails)
    emails.map { |email| AgendaDestroyMailer.agenda_destroy_mail(email) }
  end
end

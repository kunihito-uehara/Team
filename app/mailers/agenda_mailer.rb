class AgendaMailer < ApplicationMailer
  def agenda_mail(email)
    @email = email
    mail to: @email, subject: "アジェンダ削除お知らせメール"
  end
end
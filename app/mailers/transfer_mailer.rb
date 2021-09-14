class TransferMailer < ApplicationMailer
  def transfer_mail(email)
    mail to: email, subject: "チームリーダー変更のお知らせ"
  end
end

class AgendadestroyMailer < ApplicationMailer
  default to: -> { @agenda.team.members.pluck(:email) },
          from: 'notification@example.com'

  def agendadestroy_mail(agenda)
    @agenda = agenda
    mail(subject: "アジェンダ削除の通知メール")
  end
end

class NewLeaderMailer < ApplicationMailer
  default from: 'from@example.com'

  def new_leader_mail(new_leader)
    @new_leader = new_leader
    mail to: @new_leader.email, subject: I18n.t('views.messages.new_leader')
  end
end

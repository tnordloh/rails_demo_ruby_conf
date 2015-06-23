class SubmissionNotifier < ActionMailer::Base
  default from: "railsdev@nordloh.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.submission_notifier.submitted.subject
  #
  def submitted(talk)
    @talk = talk
    @greeting = "your talk has been subitted"

    mail to: "tnordloh@gmail.com", subject: @greeting
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.submission_notifier.accepted.subject
  #
  def accepted
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end

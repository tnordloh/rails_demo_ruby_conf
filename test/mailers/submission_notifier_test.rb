require 'test_helper'

class SubmissionNotifierTest < ActionMailer::TestCase
  test "submitted" do
    mail = SubmissionNotifier.submitted
    assert_equal "Submitted", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "accepted" do
    mail = SubmissionNotifier.accepted
    assert_equal "Accepted", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end

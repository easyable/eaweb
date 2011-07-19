require 'test_helper'

class NotifierTest < ActionMailer::TestCase
  test "interest" do
    mail = Notifier.interest
    assert_equal "Interest", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end

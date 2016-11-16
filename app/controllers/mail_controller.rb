class MailController < ApplicationController
  def test
    TestMailer.test_email(params[:mail], junk: 100, user_name: 'Jeff').deliver
    TestMailer.test_email(params[:mail], junk: 100, user_name: 'Jęf').deliver
    TestMailer.test_email(params[:mail], junk: 100, user_name: 'Jęęęęf').deliver

    render text: "Emails sent to #{params[:mail]}"
  end
end

# TestMailer.test_email('tadas@carwow.co.uk', junk: 300, user_name: 'Jeff').deliver
# TestMailer.test_email('tadas@carwow.co.uk', junk: 300, user_name: 'Jęf').deliver
# TestMailer.test_email('tadas@carwow.co.uk', junk: 300, user_name: 'Jęęęęf').deliver


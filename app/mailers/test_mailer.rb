class TestMailer < ApplicationMailer
  def test_email(email, junk: 100, user_name: 'Jeff')

    headers['X-MC-Template'] = 'test_template'
    headers['X-MC-MergeLanguage'] = 'handlebars'
    headers['X-MC-MergeVars'] = {'junk': 'j' * junk}.merge({'user_name': user_name}).to_json
    mail(to: email, subject: 'test email')
  end
end
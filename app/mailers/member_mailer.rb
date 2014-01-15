class MemberMailer < ActionMailer::Base
  default from: "from@example.com"

  def welcome_email(member)
      @member = member
      @url = 'http://example.com/login'
      attachments['photo-1.jpg'] = File.read('app/assets/images/photo-1.jpg')
      mail(to: @member.email, subject: 'Welcome to the news letter')
  end
end
